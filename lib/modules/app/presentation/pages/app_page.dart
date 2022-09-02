import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_event.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';

class AppPage extends ConsumerWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authEvent = ref.watch(authProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('app Page Title'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('app Page Body'),
            AppButton(
              onPressed: () {
                authEvent.mapEventsToStates(
                  const AuthEvent.loggedOut(),
                );
              },
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
