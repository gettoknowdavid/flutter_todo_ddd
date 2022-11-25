part of 'todo_search_controller.dart';

@freezed
class TodoSearchState with _$TodoSearchState {
  const factory TodoSearchState({
    required String title,
    required bool loading,
    required bool showError,
    required List<Todo?> todos,
  }) = _TodoSearchState;

  factory TodoSearchState.initial() {
    return const TodoSearchState(
      title: '',
      loading: false,
      showError: false,
      todos: [],
    );
  }
}
