import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_controller.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_state.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_controller.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';

final appProvider = StateNotifierProvider<AppController, AppState>(
  (ref) => AppController(Modular.get<IAuthFacade>()),
);

final bottomNavProvider =
    StateNotifierProvider<BottomNavigationController, BottomNavigationState>(
  (ref) => BottomNavigationController(),
);
