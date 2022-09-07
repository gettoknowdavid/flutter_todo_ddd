import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required Uid uid,
    required ITodoTitle title,
    required bool isDone,
    ITodoCategory? category,
    String? description,
    DateTime? time,
    DateTime? createdAt,
  }) = _Todo;

  factory Todo.empty() => Todo(
        uid: Uid(),
        title: ITodoTitle('Test title'),
        description: '',
        category: ITodoCategory(Category.empty()),
        isDone: false,
        time: null,
        createdAt: DateTime.now(),
      );
}
