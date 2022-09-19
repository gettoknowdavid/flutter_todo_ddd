import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/category_mapper.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';

class TodoMapper {
  Todo? toDomain(TodoDto? dto) {
    if (dto == null) {
      return null;
    }
    CategoryMapper categoryMapper = CategoryMapper();

    return Todo(
      uid: Uid.fromUniqueString(dto.uid),
      title: ITodoTitle(dto.title),
      isDone: dto.isDone,
      description: ITodoDescription(dto.description),
      time: dto.time,
      createdAt: dto.createdAt,
      category: dto.category != null
          ? ITodoCategory(categoryMapper.toDomain(dto.category)!)
          : null,
    );
  }
}
