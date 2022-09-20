import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/category_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_category_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_controller.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryController extends StateNotifier<CategoryState> {
  final ICategoryFacade _facade;

  CategoryController(this._facade) : super(const CategoryState.initial());

  late StreamSubscription<Either<CategoryFailure, List<Category?>>>
      _subscription;

  Future mapEventsToStates(CategoryEvent e) async {
    return e.map(
      getAll: _getAll,
      getUncompletedStarted: _getUncompletedStarted,
      categoriesReceived: _categoriesReceived,
      watchAll: _watchAll,
    );
  }

  _categoriesReceived(_CategoriesReceived e) async {
    state = e.failureOrNotes.fold(
      (failure) => CategoryState.loadFailure(failure),
      (success) {
        return CategoryState.loadSuccess(success);
      },
    );
  }

  _getAll(_GetAll e) async {
    state = const CategoryState.loading();

    final either = await _facade.getAll();

    state = either.fold(
      (failure) => CategoryState.loadFailure(failure),
      (success) {
        return CategoryState.loadSuccess(success);
      },
    );
  }

  _getUncompletedStarted(_GetUncompletedStarted e) async {}

  _watchAll(_WatchAll e) async {
    state = const CategoryState.loading();

    _subscription = _facade.watchAll().listen(
        (event) => mapEventsToStates(CategoryEvent.categoriesReceived(event)));
  }

  @override
  Future<void> dispose() async {
    await _subscription.cancel();
    super.dispose();
  }
}
