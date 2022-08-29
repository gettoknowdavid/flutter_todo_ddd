// ignore_for_file: unnecessary_overrides

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  @override
  int get hashCode => value.hashCode;

  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T? getOrCrash() => value.fold((l) => l.mapOrNull(), id);

  T getOrElse(T dflt) => value.getOrElse(() => dflt);

  /// Returns a bool after validating the current type
  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';
}
