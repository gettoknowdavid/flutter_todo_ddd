import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_snackbars.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/forgot-password/forgot_password_state.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class ForgotPasswordPage extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  ForgotPasswordPage({Key? key}) : super(key: key);

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
            event.mapEventsToStates(const ForgotPasswordEvent.statusChanged());
          },
        ),
      );
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        backgroundColor: Colors.transparent,
        title: TextButton.icon(
          icon: const BackButtonIcon(),
          label: const Text('Back to Login'),
          onPressed: () => Modular.to.pop(),
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColorLight,
            padding: SizeUtil.pFromLTRB(12, 0, 12, 0),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: SizeUtil.pFromLTRB(18, 0, 18, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizeUtil.vS(40),
              Image.asset(
                'assets/images/${state.status ? 'verify-email' : 'forgot-password'}.png',
                height: SizeUtil.sh(0.4),
              ),
              SizeUtil.vS(20),
              Text(
                state.status ? 'You have mail' : 'Forgot Password ',
                style: AppTextStyles.authHeading,
              ),
              Text(
                state.status
                    ? 'We\'ve sent you a mail with the password reset link. Please check your spam folder if you can\'t find the mail.'
                    : 'Don\'t worry, it happens. Please enter the email address associated with your account.',
                style: AppTextStyles.authSubheading,
              ),
              SizeUtil.vS(20),
              if (!state.status)
                Form(
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
                        disabled: !state.email.isValid(),
                        loading: state.loading,
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}
