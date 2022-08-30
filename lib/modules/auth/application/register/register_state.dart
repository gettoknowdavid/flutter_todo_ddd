import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required IName name,
    required IEmail email,
    required IPassword password,
    required bool loading,
    required bool showError,
    required Option<Either<AuthFailure, Unit>> authOption,
  }) = _RegisterState;

  factory RegisterState.initial() {
    return RegisterState(
      name: IName(''),
      email: IEmail(''),
      password: IPassword(''),
      loading: false,
      showError: false,
      authOption: none(),
    );
  }
}
