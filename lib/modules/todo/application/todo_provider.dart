import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_search/todo_search_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';

final todoFormProvider =
    StateNotifierProvider.autoDispose<TodoFormController, TodoFormState>(
  (ref) => TodoFormController(Modular.get<ITodoFacade>()),
);

final todoProvider = StateNotifierProvider<TodoController, TodoState>(
  (ref) => TodoController(Modular.get<ITodoFacade>()),
);

final todoSearchProvider =
    StateNotifierProvider<TodoSearchController, TodoSearchState>(
  (ref) => TodoSearchController(Modular.get<ITodoFacade>()),
);
