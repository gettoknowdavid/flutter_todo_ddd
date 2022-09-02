import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_snackbars.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_state.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class ForgotPasswordForm extends ConsumerWidget {
  ForgotPasswordForm({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(forgotPasswordProvider);
    final event = ref.watch(forgotPasswordProvider.notifier);

    ref.listen<ForgotPasswordState>(forgotPasswordProvider, (previous, next) {
      next.authOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => AppSnackbar.errorSnackbar(
            title: 'Forgot Password Error',
            message: failure.maybeMap(
              orElse: () => '',
              serverError: (_) => 'Server error, try again',
              invalidEmail: (_) => 'The email provided is invalid.',
              userNotFound: (_) => 'No user associated with this email.',
            ),
          ),
          (success) {
            AppSnackbar.errorSnackbar(
              title: 'Email Sent',
              message:
                  'An email with a password reset link has been sent to ${state.email}',
            );
            event.mapEventsToStates(const ForgotPasswordEvent.statusChanged());
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
              ForgotPasswordEvent.emailChanged(value),
            ),
            validator: (_) => state.email.value.fold(
              (f) => f.mapOrNull(
                invalidEmail: (_) => 'Please type in a valid email',
                empty: (_) => 'Email required',
              ),
              (_) => null,
            ),
          ),
          SizeUtil.vS(40),
          AppButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                event.mapEventsToStates(
                  const ForgotPasswordEvent.submitPressed(),
                );
              }
            },
            title: 'Submit',
          ),
        ],
      ),
    );
  }
}
