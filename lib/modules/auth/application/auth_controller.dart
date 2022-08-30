import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';

class AuthController extends StateNotifier<AuthState> {
  final IAuthFacade _facade;

  AuthController(this._facade) : super(const AuthState.initial());
}
