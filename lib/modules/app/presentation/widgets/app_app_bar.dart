import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_bar_avatar.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/dtos/user_dto.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';

class AppAppBar extends ConsumerWidget with PreferredSizeWidget {
  const AppAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appProvider);

    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeMap(
        orElse: () => null,
        unauthenticated: (_) => Modular.to.pushReplacementNamed('/login'),
      );
    });

    final user = UserDto.fromDomain(appState.user!);

    return AppBar(
      title: Text(
        "Hello ${user.name.split(' ')[0]}",
        style: AppTextStyles.appBarHeading,
      ),
      actions: const [
        AppBarAvatar(),
      ],
    );
  }
}
