part of 'todo_search_controller.dart';

@freezed
class TodoSearchEvent with _$TodoSearchEvent {
  const factory TodoSearchEvent.titleChanged(String title) = TitleChanged;
}
