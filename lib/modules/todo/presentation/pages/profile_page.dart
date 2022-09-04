import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_back_button.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_controller.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/logout_button.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: const AppBackButton(title: 'Go back'),
        actions: const [
          LogoutButton(),
        ],
      ),
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}
