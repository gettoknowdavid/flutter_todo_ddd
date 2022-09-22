part of 'todo_controller.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = TodoInitial;
  const factory TodoState.loading() = TodoLoading;
  const factory TodoState.loadSuccess({
    required List<Todo?> todos,
    required int allTodosLength,
    required int doneTodosLength,
    required int todayTodosLength,
    required int upcomingTodosLength,
  }) = TodoSuccess;
  const factory TodoState.loadFailure(TodoFailure failure) = TodoFailed;
}
