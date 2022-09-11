import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/category_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_category_facade.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_controller.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryController extends StateNotifier<CategoryState> {
  final ICategoryFacade _facade;

  CategoryController(this._facade) : super(CategoryState.initial());

  Future mapEventsToState(CategoryEvent e) async {
    return e.map(
      initialized: _initialized,
      titleChanged: _titleChanged,
      colorChanged: _colorChanged,
      categoryAddPressed: _categoryAddPressed,
    );
  }

  _categoryAddPressed(_CategoryAddPressed e) async {
    Either<CategoryFailure, Unit> r;

    state = state.copyWith(loading: true, option: none());

    r = await _facade.create(state.category);

    state = state.copyWith(
      loading: false,
      showErrors: true,
      option: optionOf(r),
    );
  }

  _colorChanged(_ColorChanged e) async {
    state = state.copyWith(
      category: state.category.copyWith(
        color: ICategoryColor(e.color),
      ),
    );
  }

  _initialized(_Initialized e) async {
    e.initialOption.fold(() => state, (initialTodo) {
      state = state.copyWith(
        category: initialTodo,
      );
    });
  }

  _titleChanged(_TitleChanged e) async {
    state = state.copyWith(
      category: state.category.copyWith(
        title: ICategoryTitle(e.title),
      ),
    );
  }
}
