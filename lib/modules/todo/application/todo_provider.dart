import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/i_todo_facade.dart';

final todoFormProvider =
    StateNotifierProvider.autoDispose<TodoFormController, TodoFormState>(
  (ref) => TodoFormController(Modular.get<ITodoFacade>()),
);
