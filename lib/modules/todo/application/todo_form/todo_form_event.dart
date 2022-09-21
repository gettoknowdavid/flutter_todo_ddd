part of 'todo_form_controller.dart';

@freezed
class TodoFormEvent with _$TodoFormEvent {
  const factory TodoFormEvent.descChanged(String desc) = _TodoDescChanged;
  const factory TodoFormEvent.edit(Todo todo) = _TodoEdit;
  const factory TodoFormEvent.initialized(Option<Todo> initialOption) =
      _TodoFormInitialized;
  const factory TodoFormEvent.isDoneChanged(bool isDone) = _TodoIsDoneChanged;
  const factory TodoFormEvent.saved() = _TodoSaved;
  const factory TodoFormEvent.timeChanged(DateTime time) = _TodoTimeChanged;
  const factory TodoFormEvent.titleChanged(String title) = _TodoTitleChanged;
}
