import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required Uid uid,
    required ITodoTitle title,
    required bool isDone,
    ITodoDescription? description,
    DateTime? time,
    DateTime? createdAt,
    List<String>? titleSearch,
  }) = _Todo;

  factory Todo.empty() => Todo(
        uid: Uid(),
        title: ITodoTitle(''),
        description: ITodoDescription(null),
        isDone: false,
        time: null,
        createdAt: DateTime.now(),
        titleSearch: [],
      );
}
