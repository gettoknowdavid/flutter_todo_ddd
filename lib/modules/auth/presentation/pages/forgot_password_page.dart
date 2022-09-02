import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'assets/images/forgot-password.png',
                height: SizeUtil.sh(0.4),
              ),
              SizeUtil.vS(20),
              Text('Forgot Password ', style: AppTextStyles.authHeading),
              Text(
                'Don\'t worry, it happens. Please enter the email address associated with your account.',
                style: AppTextStyles.authSubheading,
              ),
              SizeUtil.vS(20),
              _ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ForgotPasswordForm extends ConsumerWidget {
  _ForgotPasswordForm({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: Column(
        children: [
          AppTextField(
            hint: 'johndoe@example.com',
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
          ),
          SizeUtil.vS(40),
          AppButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {}
            },
            title: 'Submit',
          ),
        ],
      ),
    );
  }
}
