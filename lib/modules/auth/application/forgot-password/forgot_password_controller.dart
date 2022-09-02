import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';

class ForgotPasswordController extends StateNotifier<ForgotPasswordState> {
  final IAuthFacade _facade;

  ForgotPasswordController(this._facade) : super(ForgotPasswordState.initial());

  Future mapEventsToStates(ForgotPasswordEvent e) async {
    return e.map(
      emailChanged: _emailChanged,
      statusChanged: _statusChanged,
      submitPressed: _submitPressed,
    );
  }

  _emailChanged(EmailChanged e) async {
    state = state.copyWith(
      email: IEmail(e.email),
      authOption: none(),
    );
  }

  _statusChanged(StatusChanged e) async {
    state = state.copyWith(status: true, loading: false, authOption: none());
  }

  _submitPressed(SubmitPressed e) async {
    Either<AuthFailure, Unit> r;

    final emailValid = state.email.isValid();

    if (emailValid) {
      state = state.copyWith(loading: true, status: false, authOption: none());

      r = await _facade.forgotPassword(email: state.email);

      state = state.copyWith(loading: false, authOption: some(r));
    }

    state = state.copyWith(loading: false, showError: true, authOption: none());
  }
}
