import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/auth/presentation/widgets/login_form.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: SingleChildScrollView(
          padding: SizeUtil.pSymmetric(h: 18, v: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizeUtil.vS(90),
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: SizeUtil.fontSize(26),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizeUtil.vS(6),
              Text(
                'You can login into your account with your email and password.',
                style: TextStyle(color: theme.primaryColorDark),
              ),
              SizeUtil.vS(36),
              const LoginForm(),
              SizeUtil.vS(16),
              Text(
                'or',
                style: TextStyle(color: theme.primaryColorDark),
                textAlign: TextAlign.center,
              ),
              SizeUtil.vS(16),
              OutlinedButton.icon(
                icon: Image.asset('assets/icons/google.png'),
                label: const Text('Login with Google'),
                onPressed: () {},
              ),
              SizeUtil.vS(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: SizeUtil.pSymmetric(h: 6),
                    ),
                    child: Text(
                      'Register now',
                      style: TextStyle(color: theme.colorScheme.secondary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
