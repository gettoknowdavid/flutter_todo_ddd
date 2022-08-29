import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/core/value_object.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_validators.dart';
import 'package:flutter_todo_ddd/core/value_failure.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

class IName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IName(String input) {
    final finalInput = toBeginningOfSentenceCase(input);
    return IName._(validateNotEmpty(finalInput!));
  }

  const IName._(this.value);
}

class IEmail extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IEmail(String input) {
    final finalInput = input.toLowerCase().trim();
    return IEmail._(validateEmailAddress(finalInput));
  }

  const IEmail._(this.value);
}

class IPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  final bool isSignIn;

  factory IPassword(String input, {bool isSignIn = false}) {
    if (isSignIn) {
      return IPassword._(validateNotEmpty(input.trim()), isSignIn: isSignIn);
    } else {
      return IPassword._(validatePassword(input.trim()), isSignIn: isSignIn);
    }
  }

  const IPassword._(this.value, {this.isSignIn = false});
}
