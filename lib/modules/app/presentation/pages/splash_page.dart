import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_event.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final appEvent = ref.watch(appProvider.notifier);
    final todoEvent = ref.watch(todoProvider.notifier);

    ref.listen<AuthState>(authProvider, (previous, next) {
      Future.delayed(const Duration(seconds: 5), () {
        next.mapOrNull(
          authenticated: (_) {
            appEvent.mapEventsToStates(const AppEvent.initialized());

            Modular.to.pushReplacementNamed('/layout');

            todoEvent.mapEventsToStates(const TodoEvent.watchAll());
            todoEvent.mapEventsToStates(const TodoEvent.watchDone());
            todoEvent.mapEventsToStates(const TodoEvent.watchToday());
            todoEvent.mapEventsToStates(const TodoEvent.watchUpcoming());
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
    final authEvent = ref.read(authProvider.notifier);
    authEvent.mapEventsToStates(const AuthEvent.checkRequested());
    authEvent.mapEventsToStates(const AuthEvent.checkVerified());
    super.initState();
  }
}
