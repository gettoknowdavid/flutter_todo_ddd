import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/widgets/register_form.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: SizeUtil.pSymmetric(h: 18, v: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizeUtil.vS(90),
              Text('Hello.', style: AppTextStyles.authHeading),
              SizeUtil.vS(6),
              Text(
                'You can create your new account with your email and password.',
                style: AppTextStyles.authSubheading,
              ),
              SizeUtil.vS(36),
              const RegisterForm(),
              SizeUtil.vS(16),
              Text(
                'or',
                style: AppTextStyles.authSubheading,
                textAlign: TextAlign.center,
              ),
              SizeUtil.vS(16),
              OutlinedButton.icon(
                icon: Image.asset('assets/icons/google.png'),
                label: const Text('Register with Google'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
