import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_snackbars.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/login/login_state.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class LoginForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final event = ref.watch(loginProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    ref.listen<LoginState>(loginProvider, (previous, next) {
      next.authOption.fold(
        () => null,
        (either) => either.fold(
          (failure) {
            AppSnackbar.errorSnackbar(
              title: 'Authentication Failure',
              message: failure.maybeMap(
                orElse: () => '',
                serverError: (_) => 'Server error, please try again.',
                invalidEmailOrPassword: (_) => 'Invalid email or password',
              ),
            );
          },
          (success) {
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
            hint: 'johndoe@example.com',
            label: 'Email',
            enabled: !state.loading,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => event.mapEventsToStates(
              LoginEvent.emailChanged(value),
            ),
            validator: (_) => state.email.value.fold(
              (f) => f.mapOrNull(
                invalidEmail: (_) => 'Please type in a valid email',
                empty: (_) => 'Email required',
              ),
              (_) => null,
            ),
          ),
          SizeUtil.vS(12),
          AppTextField(
            hint: 'Your password',
            label: 'Password',
            enabled: !state.loading,
            isPassword: true,
            onChanged: (value) => event.mapEventsToStates(
              LoginEvent.passwordChanged(value),
            ),
            validator: (_) => state.password.value.fold(
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
          SizeUtil.vS(10),
          AppButton(
            disabled:
                !state.email.isValid() || state.password.getOrCrash() == null,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                event.mapEventsToStates(
                  const LoginEvent.loginPressed(),
                );
              }
            },
            loading: state.loading,
            title: 'Login',
          ),
        ],
      ),
    );
  }
}
