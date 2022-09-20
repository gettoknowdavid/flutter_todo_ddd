part of 'todo_controller.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.watchAll() = _WatchAll;
  const factory TodoEvent.watchUncompleted() = _WatchUncompleted;
  const factory TodoEvent.todosReceived(
    Either<TodoFailure, List<Todo?>> either,
  ) = _TodosReceived;
}
