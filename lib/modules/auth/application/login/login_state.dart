import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required IEmail email,
    required IPassword password,
    required bool loading,
    required bool showError,
    required Option<Either<AuthFailure, Unit>> authOption,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(
      email: IEmail(''),
      password: IPassword(''),
      loading: false,
      showError: false,
      authOption: none(),
    );
  }
}
