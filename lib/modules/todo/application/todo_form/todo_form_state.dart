part of 'todo_form_controller.dart';

@freezed
class TodoFormState with _$TodoFormState {
  const factory TodoFormState({
    required Todo todo,
    required bool showErrors,
    required bool isEdit,
    required bool loading,
    required Option<Either<TodoFailure, Unit>> option,
  }) = _TodoFormState;

  factory TodoFormState.initial() => TodoFormState(
        todo: Todo.empty(),
        showErrors: false,
        isEdit: false,
        loading: false,
        option: none(),
      );
}
