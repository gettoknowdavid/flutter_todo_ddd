import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';
import 'package:flutter_todo_ddd/core/value_object.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_validators.dart';
import 'package:kt_dart/collection.dart';

class ICategoryColor extends ValueObject<Color> {
  static const List<Color> colors = [
    Color.fromRGBO(250, 250, 250, 1), // canvas
    Color.fromRGBO(250, 128, 114, 1), // salmon
    Color.fromRGBO(254, 220, 86, 1), // mustard
    Color.fromRGBO(208, 240, 192, 1), // tea
    Color.fromRGBO(252, 163, 183, 1), // flamingo
    Color.fromRGBO(153, 121, 80, 1), // tortilla
    Color.fromRGBO(255, 253, 208, 1), // cream
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

class ICategoryTodoList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory ICategoryTodoList(KtList<T> input) {
    return ICategoryTodoList._(right(input));
  }

  const ICategoryTodoList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}

class ITodoTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ITodoTitle(String input) {
    return ITodoTitle._(validateTitleNotEmpty(input));
  }

  const ITodoTitle._(this.value);
}
