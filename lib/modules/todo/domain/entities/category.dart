import 'package:flutter_todo_ddd/core/uid.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required Uid uid,
    required ICategoryTitle title,
    required ICategoryTodoList todos,
    required ICategoryColor color,
  }) = _Category;

  factory Category.empty() => Category(
        uid: Uid.fromUniqueString(''),
        title: ICategoryTitle(''),
        todos: ICategoryTodoList(emptyList()),
        color: ICategoryColor(ICategoryColor.colors[0]),
      );
}
