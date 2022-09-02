import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_snackbars.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_state.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/widgets/password_rules_widget.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class RegisterForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerProvider);
    final event = ref.watch(registerProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    ref.listen<RegisterState>(registerProvider, (previous, next) {
      next.authOption.fold(
        () => null,
        (either) => either.fold(
          (failure) {
            AppSnackbar.errorSnackbar(
              title: 'Registration Error',
              message: failure.maybeMap(
                emailInUse: (_) => 'This email has already been used.',
                orElse: () => '',
                serverError: (_) => 'Server error, try again.',
              ),
            );
          },
          (success) {
            authEvent.mapEventsToStates(
              const AuthEvent.sendVerificationEmail(),
            );
            Modular.to.pushReplacementNamed('/verification');
          },
        ),
      );
    });

    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            hint: 'John Doe',
            label: 'Name',
            enabled: !state.loading,
            onChanged: (value) => event.mapEventsToStates(
              RegisterEvent.nameChanged(value),
            ),
            validator: (_) => state.email.value.fold(
              (f) => f.mapOrNull(empty: (_) => 'Name required'),
              (_) => null,
            ),
          ),
          SizeUtil.vS(10),
          AppTextField(
            hint: 'Email',
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            enabled: !state.loading,
            onChanged: (value) => event.mapEventsToStates(
              RegisterEvent.emailChanged(value),
            ),
            validator: (_) => state.email.value.fold(
              (f) => f.mapOrNull(
                invalidEmail: (_) => 'Please type in a valid email',
                empty: (_) => 'Email required',
              ),
              (_) => null,
            ),
          ),
          SizeUtil.vS(10),
          AppTextField(
            hint: 'Password',
            label: 'Password',
            isPassword: true,
            enabled: !state.loading,
            onChanged: (value) => event.mapEventsToStates(
              RegisterEvent.passwordChanged(value),
            ),
            validator: (_) => state.password.value.fold(
              (f) => f.mapOrNull(invalidPassword: (_) => 'Password invalid'),
              (_) => null,
            ),
          ),
          PasswordRulesWidget(password: state.password.getOrCrash()),
          SizeUtil.vS(26),
          AppButton(
            disabled: !state.name.isValid() ||
                !state.email.isValid() ||
                !state.password.isValid(),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                event.mapEventsToStates(
                  const RegisterEvent.registerPressed(),
                );
              }
            },
            loading: state.loading,
            title: 'Register',
          ),
        ],
      ),
    );
  }
}
