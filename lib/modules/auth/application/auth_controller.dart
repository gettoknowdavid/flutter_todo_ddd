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
    // final option = await _facade.currentUser();

    _facade.authStateChange.listen((event) {
      print('01 $state');
      if (event != null) {
        state = const AuthState.authenticated();
        print('02 $state');
      } else {
        state = const AuthState.unauthenticated();
        print('03 $state');
      }
    });
    // state = option.fold(
    //   () => const AuthState.unauthenticated(),
    //   (_) => const AuthState.authenticated(),
    // );
  }

  _checkVerified(AuthCheckVerified e) async {
    final verifiedEither = await _facade.checkVerification();
    state = verifiedEither.fold(
      () => const AuthState.unauthenticated(),
      (either) => either.fold(
        (_) => const AuthState.unverified(),
        (_) => const AuthState.verified(),
      ),
    );
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
