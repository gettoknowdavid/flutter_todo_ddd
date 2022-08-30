import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/errors/auth_failure.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/value_objects.dart';

class RegisterController extends StateNotifier<RegisterState> {
  final IAuthFacade _facade;

  RegisterController(this._facade) : super(RegisterState.initial());

  Future mapEventsToStates(RegisterEvent e) async {
    return e.map(
      nameChanged: _nameChanged,
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      registerPressed: _registerPressed,
    );
  }

  _nameChanged(NameChanged e) async {
    state = state.copyWith(
      name: IName(e.name),
      authOption: none(),
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
      password: IPassword(e.password),
      passwordController: TextEditingController(text: e.password),
      authOption: none(),
    );
  }

  _registerPressed(RegisterPressed e) async {
    Either<AuthFailure, Unit> r;

    final nameValid = state.name.isValid();
    final emailValid = state.email.isValid();
    final passwordValid = state.password.isValid();

    if (nameValid && emailValid && passwordValid) {
      state = state.copyWith(loading: true, authOption: none());

      r = await _facade.register(
        name: state.name,
        email: state.email,
        password: state.password,
      );

      state = state.copyWith(loading: false, authOption: some(r));
    }

    state = state.copyWith(loading: false, showError: true, authOption: none());
  }
}
