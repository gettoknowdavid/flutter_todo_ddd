import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_back_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: const AppBackButton(title: 'Go back'),
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
