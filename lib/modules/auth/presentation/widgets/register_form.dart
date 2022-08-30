import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/register/register_state.dart';
import 'package:flutter_todo_ddd/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/widgets/password_rules_widget.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

final authProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(Modular.get<IAuthFacade>()),
);

final registerProvider =
    StateNotifierProvider.autoDispose<RegisterController, RegisterState>(
  (ref) {
    return RegisterController(Modular.get<IAuthFacade>());
  },
);

class RegisterForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerProvider);
    final event = ref.watch(registerProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    return Form(
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
          SizeUtil.vS(20),
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
          SizeUtil.vS(20),
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
          SizeUtil.vS(46),
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
