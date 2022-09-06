import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_form_controller.freezed.dart';
part 'todo_form_event.dart';
part 'todo_form_state.dart';

class TodoFormController extends StateNotifier<TodoFormState> {
  TodoFormController() : super(TodoFormState.initial());

  Future mapEventsToStates(TodoFormEvent e) async {
    return e.map(
      descChanged: _descChanged,
      initialized: _initialized,
      isDoneChanged: _isDoneChanged,
      saved: _saved,
      timeChanged: _timeChanged,
      titleChanged: _titleChanged,
    );
  }

  _descChanged(_TodoDescChanged e) async {}

  _initialized(_TodoFormInitialized e) async {
    e.initialOption.fold(() => state, (initialTodo) {
      state = state.copyWith(
        todo: initialTodo,
        isEdit: true,
      );
    });
  }

  _isDoneChanged(_TodoIsDoneChanged e) async {}
  _saved(_TodoSaved e) async {}
  _timeChanged(_TodoTimeChanged e) async {}
  _titleChanged(_TodoTitleChanged e) async {}
}
