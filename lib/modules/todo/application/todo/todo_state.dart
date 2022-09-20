part of 'todo_controller.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = TodoInitial;
  const factory TodoState.loading() = TodoLoading;
  const factory TodoState.loadSuccess(List<Todo?> todos) = TodoSuccess;
  const factory TodoState.loadFailure(TodoFailure failure) = TodoFailed;
}
