part of 'todo_controller.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.todosReceived(
    Either<TodoFailure, List<Todo?>> either,
  ) = _TodosReceived;
  const factory TodoEvent.watchAll() = _WatchAll;
  const factory TodoEvent.watchDone() = _WatchDone;
  const factory TodoEvent.watchToday() = _WatchToday;
  const factory TodoEvent.watchUncompleted() = _WatchUncompleted;
  const factory TodoEvent.watchUpcoming() = _WatchUpcoming;
}
