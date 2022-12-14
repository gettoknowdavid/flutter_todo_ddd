import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authEvent = ref.watch(authProvider.notifier);

    return Container(
      height: SizeUtil.h(40),
      width: SizeUtil.h(40),
      margin: SizeUtil.pOnly(r: 18),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(223, 2, 1, 0.1),
        shape: BoxShape.circle,
      ),
      child: AppIcon(
        icon: AppIcons.logout,
        semantic: 'Logout button',
        color: const Color.fromRGBO(223, 2, 1, 1),
        height: SizeUtil.h(22),
        width: SizeUtil.h(22),
        onPressed: () {
          authEvent.mapEventsToStates(const AuthEvent.loggedOut());
        },
      ),
    );
  }
}
