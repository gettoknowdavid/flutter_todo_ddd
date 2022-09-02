import 'package:dartz/dartz.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required IEmail email,
    required bool loading,
    required bool showError,
    required Option<Either<AuthFailure, Unit>> authOption,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() {
    return ForgotPasswordState(
      email: IEmail(''),
      loading: false,
      showError: false,
      authOption: none(),
    );
  }
}
