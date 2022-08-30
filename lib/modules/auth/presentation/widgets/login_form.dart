import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_snackbars.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_event.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_state.dart';

final provider = StateNotifierProvider.autoDispose<LoginController, LoginState>(
  (ref) {
    ref.onDispose(() => ref.refresh);
    return LoginController(Modular.get<IAuthFacade>());
  },
);

final authProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(Modular.get<IAuthFacade>()),
);

class LoginForm extends ConsumerWidget {
  LoginForm({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(provider);
    final formEvent = ref.watch(provider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    ref.listen<LoginState>(provider, (p, c) {
      c.authOption.fold(
        () => null,
        (either) => either.fold(
          (f) {
            AppSnackbar.errorSnackbar(
              title: 'Authentication Failure',
              message: f.maybeMap(
                orElse: () => '',
                serverError: (_) => 'Server error, please try again.',
                invalidEmailOrPassword: (_) => 'Invalid email or password',
              ),
            );
          },
          (_) {
            authEvent.mapEventsToStates(const AuthEvent.checkRequested());
            authEvent.mapEventsToStates(const AuthEvent.checkVerified());
          },
        ),
      );
    });

    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            hint: 'Email',
            label: 'Email',
            enabled: !formState.loading,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => formEvent.mapEventsToStates(
              LoginEvent.emailChanged(value),
            ),
            validator: (_) => formState.email.value.fold(
              (f) => f.mapOrNull(
                invalidEmail: (_) => 'Please type in a valid email',
                empty: (_) => 'Email required',
              ),
              (_) => null,
            ),
          ),
          SizeUtil.vS(26),
          AppTextField(
            hint: 'Password',
            label: 'Password',
            enabled: !formState.loading,
            isPassword: true,
            onChanged: (value) => formEvent.mapEventsToStates(
              LoginEvent.passwordChanged(value),
            ),
            validator: (_) => formState.password.value.fold(
              (f) => f.mapOrNull(empty: (_) => 'Password required'),
              (_) => null,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot Password?'),
            ),
          ),
          SizeUtil.vS(36),
          AppButton(
            disabled: !formState.email.isValid() ||
                formState.password.getOrCrash() == null,
            loading: !formState.loading,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formEvent.mapEventsToStates(
                  const LoginEvent.loginPressed(),
                );
              }
            },
            title: 'Login',
          ),
        ],
      ),
    );
  }
}
