import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/errors/todo_failure.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_search_controller.freezed.dart';
part 'todo_search_event.dart';
part 'todo_search_state.dart';

class TodoSearchController extends StateNotifier<TodoSearchState> {
  final ITodoFacade _facade;

  late StreamSubscription<Either<TodoFailure, List<Todo?>>> _subscriptionSearch;

  TodoSearchController(this._facade) : super(TodoSearchState.initial());

  @override
  Future<void> dispose() async {
    _subscriptionSearch.cancel();
    super.dispose();
  }

  Future mapEventsToStates(TodoSearchEvent e) async {
    return e.map(
      titleChanged: _titleChanged,
    );
  }

  _titleChanged(TitleChanged e) async {
    state = state.copyWith(title: e.title);
    _subscriptionSearch = _facade.search(e.title).listen((event) {
      event.fold(
        (failure) => null,
        (success) {
          state = state.copyWith(
            title: e.title,
            loading: false,
            showError: false,
            todos: success,
          );
        },
      );
    });
  }
}
