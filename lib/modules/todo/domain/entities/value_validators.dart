import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';

Either<ValueFailure<String>, String> validateTitleNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(input));
  } else if (input.length > 250) {
    return left(ValueFailure.titleLengthExceeded(input));
  } else {
    return right(input);
  }
}
