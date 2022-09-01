import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';

class AppLayout extends ConsumerWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authEvent = ref.watch(authProvider.notifier);
    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeMap(
        orElse: () => null,
        unauthenticated: (_) => Modular.to.pushReplacementNamed('/login'),
      );
    });
    return Scaffold(
      appBar: AppBar(title: const Text('Teek Layout')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('app Page Body'),
            TextButton(
              onPressed: () {
                authEvent.mapEventsToStates(const AuthEvent.loggedOut());
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
