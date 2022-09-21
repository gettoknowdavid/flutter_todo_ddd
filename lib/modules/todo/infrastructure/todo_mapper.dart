import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';

class TodoMapper {
  Todo? toDomain(TodoDto? dto) {
    if (dto == null) {
      return null;
    }

    return Todo(
      uid: Uid.fromUniqueString(dto.uid),
      title: ITodoTitle(dto.title),
      isDone: dto.isDone,
      description: ITodoDescription(dto.description),
      category: dto.category,
      time: dto.time,
      createdAt: dto.createdAt,
    );
  }
}
