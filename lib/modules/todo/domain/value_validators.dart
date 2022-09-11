import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';

Either<ValueFailure<String>, String> validateCategoryNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateTodoTitle(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(input));
  } else if (input.length > 150) {
    return left(ValueFailure.titleLengthExceeded(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String?> validateTodoDescription(String? input) {
  if (input == null) {
    return right(input);
  } else if (input.length > 250) {
    return left(ValueFailure.descLengthExceeded(input));
  } else {
    return right(input);
  }
}
