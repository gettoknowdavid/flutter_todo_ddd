import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_event.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';

class AppController extends StateNotifier<AppState> {
  final IAuthFacade _authFacade;

  AppController(this._authFacade) : super(AppState.initial());

  Future mapEventsToState(AppEvent e) async {
    e.map(initialized: _initialized);
  }

  _initialized(AppInitialized e) async {
    state = state.copyWith(loading: true);

    final option = await _authFacade.currentUser();

    option.fold(
      () => state = state.copyWith(
        loading: false,
      ),
      (user) => state = state.copyWith(
        loading: false,
        user: user,
      ),
    );
  }
}
