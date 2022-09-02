import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/widgets/register_form.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
          padding: SizeUtil.pFromLTRB(18, 40, 18, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizeUtil.vS(30),
              Image.asset(
                'assets/images/register.png',
                height: SizeUtil.sh(0.4),
              ),
              Text('Register', style: AppTextStyles.authHeading),
              Text(
                'Register with your email and password.',
                style: AppTextStyles.authSubheading,
              ),
              SizeUtil.vS(20),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
