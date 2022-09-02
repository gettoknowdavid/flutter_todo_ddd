import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/services/open_mail_app_facade.dart';

class AuthController extends StateNotifier<AuthState> {
  final IAuthFacade _facade;
  final OpenMailAppFacade _mailFacade;

  AuthController(
    this._facade,
    this._mailFacade,
  ) : super(const AuthState.initial());

  Future mapEventsToStates(AuthEvent e) async {
    return e.map(
      checkRequested: _checkRequested,
      checkVerified: _checkVerified,
      sendVerificationEmail: _sendVerificationEmail,
      loggedOut: _loggedOut,
      openMailApp: _openMailApp,
    );
  }

  _checkRequested(AuthCheckRequested e) async {
    _facade.authStateChange.listen((event) {
      if (event != null) {
        state = const AuthState.authenticated();
      } else if (event != null && !event.emailVerified) {
        state = const AuthState.unverified();
      } else {
        state = const AuthState.unauthenticated();
      }
    });
  }

  _checkVerified(AuthCheckVerified e) async {

    _facade.authStateChange.listen((event) {
      if (event != null) {
        switch (event.emailVerified) {
          case true:
            state = const AuthState.verified();
            break;
          case false:
            state = const AuthState.unverified();
            break;
          default:
            state = const AuthState.awaitingVerified();
        }
      }
    });

   
  }

  _loggedOut(LoggedOut e) async {
    await _facade.logout();

    state = const AuthState.unauthenticated();
  }

  _openMailApp(OpenMailApp e) async {
    await _mailFacade.openMailApp();
  }

  _sendVerificationEmail(SendVerificationEmail e) async {
    await _facade.sendVerificationEmail();

    state = const AuthState.awaitingVerified();
  }
}
