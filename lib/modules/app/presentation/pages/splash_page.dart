import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';

final _authProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(Modular.get<IAuthFacade>()),
);

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(_authProvider, (previous, next) {
      Future.delayed(const Duration(seconds: 5), () {
        next.mapOrNull(
          authenticated: (_) {
            // profileBloc.add(const ProfileEvent.initialized());
            Modular.to.pushReplacementNamed('/layout');
          },
          unauthenticated: (_) => Modular.to.pushReplacementNamed('/login'),
          unverified: (_) => Modular.to.pushReplacementNamed('/verification'),
        );
      });
    });

    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }

  @override
  void initState() {
    final authEvent = ref.read(_authProvider.notifier);
    authEvent.mapEventsToStates(const AuthEvent.checkRequested());
    authEvent.mapEventsToStates(const AuthEvent.checkVerified());
    super.initState();
  }
}
