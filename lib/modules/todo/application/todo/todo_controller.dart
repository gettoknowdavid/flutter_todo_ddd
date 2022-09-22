import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_controller.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoController extends StateNotifier<TodoState> {
  final ITodoFacade _facade;

  late StreamSubscription<Either<TodoFailure, List<Todo?>>> _subscription;

  TodoController(this._facade) : super(const TodoState.initial());

  @override
  Future<void> dispose() async {
    await _subscription.cancel();
    super.dispose();
  }

  Future mapEventsToStates(TodoEvent e) async {
    return e.map(
      watchAll: _watchAll,
      watchUncompleted: _watchUncompleted,
      todosReceived: _todosReceived,
      watchDone: _watchDone,
      watchToday: _watchToday,
      watchUpcoming: _watchUpcoming,
    );
  }

  _todosReceived(_TodosReceived e) async {
    state = e.either.fold(
      (failure) => TodoState.loadFailure(failure),
      (success) => TodoState.loadSuccess(success),
    );
  }

  _watchAll(_WatchAll e) async {
    state = const TodoState.loading();

    _subscription = _facade.watchAll().listen((event) {
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchDone(_WatchDone e) async {
    state = const TodoState.loading();

    _subscription = _facade.watchDone().listen((event) {
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchToday(_WatchToday e) async {
    state = const TodoState.loading();

    _subscription = _facade.watchToday().listen((event) {
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchUncompleted(_WatchUncompleted e) async {
    state = const TodoState.loading();

    _subscription = _facade.watchUncompleted().listen((event) {
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchUpcoming(_WatchUpcoming e) async {
    state = const TodoState.loading();

    _subscription = _facade.watchUncompleted().listen((event) {
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }
}
