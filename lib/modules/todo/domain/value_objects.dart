import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';
import 'package:flutter_todo_ddd/core/value_object.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_validators.dart';

class ICategoryColor extends ValueObject<Color> {
  static const List<Color> colors = [
    Color.fromRGBO(250, 250, 250, 1), // canvas
    Color.fromRGBO(250, 128, 114, 1), // salmon
    Color.fromRGBO(254, 220, 86, 1), // mustard
    Color.fromRGBO(208, 240, 192, 1), // tea
    Color.fromRGBO(252, 163, 183, 1), // flamingo
    Color.fromRGBO(153, 121, 80, 1), // tortilla
    Color.fromRGBO(255, 253, 208, 1), // cream
    Color.fromRGBO(255, 103, 217, 1), // purple
    Color.fromRGBO(242, 64, 64, 1), // red
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  factory ICategoryColor(Color input) {
    return ICategoryColor._(right(input));
  }

  const ICategoryColor._(this.value);
}

class ICategoryTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ICategoryTitle(String input) {
    return ICategoryTitle._(validateCategoryNotEmpty(input));
  }

  const ICategoryTitle._(this.value);
}

class ITodoCategory extends ValueObject<Category> {
  @override
  final Either<ValueFailure<Category>, Category> value;

  factory ITodoCategory(Category input) {
    return ITodoCategory._(right(input));
  }

  const ITodoCategory._(this.value);
}

class ITodoTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ITodoTitle(String input) {
    return ITodoTitle._(validateTodoTitle(input));
  }

  const ITodoTitle._(this.value);
}

class ITodoDescription extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String>, String?> value;

  factory ITodoDescription(String? input) {
    return ITodoDescription._(validateTodoDescription(input));
  }

  const ITodoDescription._(this.value);
}
