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

  late StreamSubscription<Either<TodoFailure, List<Todo?>>> _subscriptionAll;
  late StreamSubscription<Either<TodoFailure, List<Todo?>>> _subscriptionDone;
  late StreamSubscription<Either<TodoFailure, List<Todo?>>> _subscriptionToday;
  late StreamSubscription<Either<TodoFailure, List<Todo?>>>
      _subscriptionUpcoming;

  int subLengthAll = 0;
  int subLengthDone = 0;
  int subLengthToday = 0;
  int subLengthUpcoming = 0;

  TodoController(this._facade) : super(const TodoState.initial());

  @override
  Future<void> dispose() async {
    _subscriptionAll.cancel();
    _subscriptionDone.cancel();
    _subscriptionToday.cancel();
    _subscriptionUpcoming.cancel();
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
      (success) => TodoState.loadSuccess(
        todos: success,
        allTodosLength: subLengthAll,
        doneTodosLength: subLengthDone,
        todayTodosLength: subLengthToday,
        upcomingTodosLength: subLengthUpcoming,
      ),
    );
  }

  _watchAll(_WatchAll e) async {
    _subscriptionAll = _facade.watchAll().listen((event) {
      event.fold((l) => null, (r) => subLengthAll = r.length);
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchDone(_WatchDone e) async {
    _subscriptionDone = _facade.watchDone().listen((event) {
      event.fold((l) => null, (r) => subLengthDone = r.length);
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchToday(_WatchToday e) async {
    _subscriptionToday = _facade.watchToday().listen((event) {
      event.fold((l) => null, (r) => subLengthToday = r.length);
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchUncompleted(_WatchUncompleted e) async {
    _subscriptionToday = _facade.watchUncompleted().listen((event) {
      event.fold((l) => null, (r) => subLengthAll = r.length);
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }

  _watchUpcoming(_WatchUpcoming e) async {
    _subscriptionUpcoming = _facade.watchUpcoming().listen((event) {
      event.fold((l) => null, (r) => subLengthUpcoming = r.length);
      mapEventsToStates(TodoEvent.todosReceived(event));
    });
  }
}
