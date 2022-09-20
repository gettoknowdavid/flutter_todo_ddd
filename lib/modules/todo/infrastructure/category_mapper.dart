import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/category_dto.dart';

class CategoryMapper {
  Category? toDomain(CategoryDto? dto) {
    if (dto == null) {
      return null;
    }

    return Category(
      uid: Uid.fromUniqueString(dto.uid),
      title: ICategoryTitle(dto.title),
      color: ICategoryColor(Color(dto.color)),
      createdAt: dto.createdAt,
    );
  }
}
