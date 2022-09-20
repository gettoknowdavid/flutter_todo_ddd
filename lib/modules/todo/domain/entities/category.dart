import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required Uid uid,
    required ICategoryTitle title,
    required ICategoryColor color,
    DateTime? createdAt,
  }) = _Category;

  factory Category.empty() => Category(
        uid: Uid(),
        title: ICategoryTitle(''),
        color: ICategoryColor(ICategoryColor.colors[0]),
        createdAt: DateTime.now(),
      );

  factory Category.all() => Category(
        uid: Uid(),
        title: ICategoryTitle('All'),
        color: ICategoryColor(Colors.black),
        createdAt: DateTime.now(),
      );
}
