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

  Future mapEventsToStates(CategoryEvent e) async {
    return e.map(
      getAll: _getAll,
      getUncompletedStarted: _getUncompletedStarted,
      categoriesReceived: _categoriesReceived,
    );
  }

  _categoriesReceived(_CategoriesReceived e) async {}

  _getAll(_GetAll e) async {
    state = const CategoryState.loading();

    final either = await _facade.getAll();

    state = either.fold(
      (failure) => CategoryState.loadFailure(failure),
      (success) {
        print(success);
        return CategoryState.loadSuccess(success);
      },
    );
  }

  _getUncompletedStarted(_GetUncompletedStarted e) async {}
}
