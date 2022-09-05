import 'package:flutter_todo_ddd/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_object.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/value_validators.dart';

class ITodoTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ITodoTitle(String input) {
    return ITodoTitle._(validateTitleNotEmpty(input));
  }

  const ITodoTitle._(this.value);
}
