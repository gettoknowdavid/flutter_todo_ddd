import 'dart:async';

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

class VerificationPage extends ConsumerStatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends ConsumerState<VerificationPage> {
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    final authEvent = ref.watch(_authProvider.notifier);
    ref.listen<AuthState>(_authProvider, (previous, next) {
      next.maybeMap(
        orElse: () => null,
        verified: (_) {
          timer?.cancel();
          Modular.to.pushReplacementNamed('/layout');
        },
        unauthenticated: (_) {
          timer = Timer.periodic(const Duration(seconds: 3), (_) {
            authEvent.mapEventsToStates(const AuthEvent.checkVerified());
          });
        },
        awaitingVerified: (_) {
          timer = Timer.periodic(const Duration(seconds: 3), (_) {
            authEvent.mapEventsToStates(const AuthEvent.checkVerified());
          });
        },
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/verify-email.png'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    final authEvent = ref.read(_authProvider.notifier);
    authEvent.mapEventsToStates(const AuthEvent.checkVerified());
    super.initState();
  }
}
