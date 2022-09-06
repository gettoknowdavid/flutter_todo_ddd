import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';

final todoFormProvider =
    StateNotifierProvider.autoDispose<TodoFormController, TodoFormState>(
  (ref) => TodoFormController(),
);
