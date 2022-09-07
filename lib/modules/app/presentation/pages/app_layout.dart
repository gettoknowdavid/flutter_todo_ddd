import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_loading_indicator.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_app_bar.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/home_page.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppLayout extends ConsumerWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final appState = ref.watch(appProvider);
    final bottomNavState = ref.watch(bottomNavProvider);

    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeMap(
        orElse: () => null,
        unauthenticated: (_) => Modular.to.pushReplacementNamed('/login'),
      );
    });

    if (appState.loading) {
      return Scaffold(
        backgroundColor: theme.colorScheme.secondary,
        body: Center(
          child: SizedBox(
            width: SizeUtil.sw(0.25),
            child: const AppLoadingIndicator(),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: bottomNavState.page is HomePage ? null : const AppAppBar(),
      body: bottomNavState.page,
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
