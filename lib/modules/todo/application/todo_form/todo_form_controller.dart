import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_form_controller.freezed.dart';
part 'todo_form_event.dart';
part 'todo_form_state.dart';

class TodoFormController extends StateNotifier<TodoFormState> {
  final ITodoFacade _facade;

  TodoFormController(this._facade) : super(TodoFormState.initial());

  Future mapEventsToStates(TodoFormEvent e) async {
    return e.map(
      descChanged: _descChanged,
      edit: _edit,
      initialized: _initialized,
      isDoneChanged: _isDoneChanged,
      saved: _saved,
      timeChanged: _timeChanged,
      titleChanged: _titleChanged,
    );
  }

  _descChanged(_TodoDescChanged e) async {
    state = state.copyWith(
      todo: state.todo.copyWith(
        description: ITodoDescription(e.desc),
      ),
    );
  }

  _edit(_TodoEdit e) async {
    Either<TodoFailure, Unit> r;

    state = state.copyWith(
      todo: state.todo.copyWith(
        uid: e.todo.uid,
        title: e.todo.title,
        description: e.todo.description,
        createdAt: e.todo.createdAt,
        isDone: e.todo.isDone,
        time: e.todo.time,
      ),
    );

    r = await _facade.edit(state.todo);

    state = state.copyWith(
      loading: false,
      showErrors: true,
      option: optionOf(r),
    );
  }

  _initialized(_TodoFormInitialized e) async {
    e.initialOption.fold(() => state, (initialTodo) {
      state = state.copyWith(
        todo: initialTodo,
        isEdit: true,
      );
    });
  }

  _isDoneChanged(_TodoIsDoneChanged e) async {
    state = state.copyWith(
      todo: state.todo.copyWith(
        isDone: e.isDone,
      ),
    );
  }

  _saved(_TodoSaved e) async {
    Either<TodoFailure, Unit> r;

    state = state.copyWith(loading: true, option: none());

    r = await _facade.create(state.todo);

    state = state.copyWith(
      loading: false,
      showErrors: true,
      option: optionOf(r),
    );
  }

  _timeChanged(_TodoTimeChanged e) async {
    state = state.copyWith(
      todo: state.todo.copyWith(
        time: e.time,
      ),
    );
  }

  _titleChanged(_TodoTitleChanged e) async {
    state = state.copyWith(
      todo: state.todo.copyWith(
        title: ITodoTitle(e.title),
        titleSearch: setSearchParam(e.title),
      ),
    );
  }

  setSearchParam(String title) {
    List<String>? titleSearchList = [];
    String temp = "";
    for (int i = 0; i < title.length; i++) {
      temp = temp + title[i];
      titleSearchList.add(temp.toLowerCase());
    }
    return titleSearchList;
  }
}
