import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';

class LoginController extends StateNotifier<LoginState> {
  final IAuthFacade _facade;

  LoginController(this._facade) : super(LoginState.initial());

  Future mapEventsToStates(LoginEvent e) async {
    return e.map(
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      loginPressed: _loginPressed,
    );
  }

  _emailChanged(EmailChanged e) async {
    state = state.copyWith(
      email: IEmail(e.email),
      authOption: none(),
    );
  }

  _passwordChanged(PasswordChanged e) async {
    state = state.copyWith(
      password: IPassword(e.password, isSignIn: true),
      authOption: none(),
    );
  }

  _loginPressed(LoginPressed e) async {
    Either<AuthFailure, Unit> r;

    final emailValid = state.email.isValid();
    final passwordValid = state.password.getOrCrash() != null;

    if (emailValid && passwordValid) {
      state = state.copyWith(loading: true, authOption: none());

      r = await _facade.login(email: state.email, password: state.password);

      state = state.copyWith(loading: false, authOption: some(r));
    }

    state = state.copyWith(loading: false, showError: true, authOption: none());
  }
}
