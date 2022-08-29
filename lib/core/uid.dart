import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';
import 'package:flutter_todo_ddd/core/value_object.dart';
import 'package:uuid/uuid.dart';

class Uid extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Uid() {
    return Uid._(right(const Uuid().v4()));
  }

  factory Uid.fromUniqueString(String uid) {
    return Uid._(right(uid));
  }

  const Uid._(this.value);
}
