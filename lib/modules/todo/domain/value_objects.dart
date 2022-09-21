import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';
import 'package:flutter_todo_ddd/core/value_object.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_validators.dart';




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
