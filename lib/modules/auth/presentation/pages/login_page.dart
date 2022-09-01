import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_event.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/widgets/login_form.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(loginProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeMap(
        orElse: () => null,
        authenticated: (_) => Modular.to.pushReplacementNamed('/layout'),
      );
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: SingleChildScrollView(
          padding: SizeUtil.pSymmetric(h: 18, v: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizeUtil.vS(90),
              Text('Welcome back', style: AppTextStyles.authHeading),
              SizeUtil.vS(6),
              Text(
                'You can login into your account with your email and password.',
                style: AppTextStyles.authSubheading,
              ),
              SizeUtil.vS(36),
              LoginForm(),
              SizeUtil.vS(16),
              Text(
                'or',
                style: AppTextStyles.authSubheading,
                textAlign: TextAlign.center,
              ),
              SizeUtil.vS(16),
              OutlinedButton.icon(
                icon: Image.asset(
                  'assets/icons/google.png',
                  height: SizeUtil.h(22),
                ),
                label: const Text('Login with Google'),
                onPressed: () {
                  event.mapEventsToStates(
                    const LoginEvent.googleLoginPressed(),
                  );
                  authEvent.mapEventsToStates(const AuthEvent.checkRequested());
                },
              ),
              SizeUtil.vS(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      authEvent.mapEventsToStates(const AuthEvent.loggedOut());
                      Modular.to.pushNamed('/register');
                    },
                    style: TextButton.styleFrom(
                      padding: SizeUtil.pSymmetric(h: 6),
                    ),
                    child: Text('Register', style: AppTextStyles.registerNow),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
