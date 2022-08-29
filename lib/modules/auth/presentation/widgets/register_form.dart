import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const AppTextField(
            hint: 'Name',
            label: 'Name',
          ),
          SizeUtil.vS(20),
          const AppTextField(
            hint: 'Email',
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizeUtil.vS(20),
          const AppTextField(
            hint: 'Password',
            label: 'Password',
            isPassword: true,
          ),
          SizeUtil.vS(46),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}
