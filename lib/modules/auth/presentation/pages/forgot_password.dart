import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
          child: Column(
            children: [
              SizeUtil.vS(30),
              Image.asset(
                'assets/images/forgot-password.png',
                height: SizeUtil.sh(0.4),
              ),
              Text('Forgot Password ', style: AppTextStyles.authHeading),
              Text(
                'Don\'t worry, it happens. Please enter the email address associated with your account.',
                style: AppTextStyles.authSubheading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
