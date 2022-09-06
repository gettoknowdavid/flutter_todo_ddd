import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/application/auth_state.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/dtos/user_dto.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppAppBar extends ConsumerWidget with PreferredSizeWidget {
  const AppAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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

    final user = UserDto.fromDomain(appState.user!);

    return AppBar(
      title: bottomNavState.currentIndex == 0
          ? null
          : Text(
              "Hello ${user.name.split(' ')[0]}",
              style: AppTextStyles.appBarHeading,
            ),
      actions: [
        GestureDetector(
          onTap: () => Modular.to.pushNamed('/profile'),
          child: Center(
            child: CircleAvatar(
              backgroundColor: theme.colorScheme.secondary,
              foregroundImage:
                  user.avatar != null ? NetworkImage(user.avatar!) : null,
              child: Text(
                user.name.characters.first,
                style: AppTextStyles.avatarPlaceholder,
              ),
            ),
          ),
        ),
        SizeUtil.hS(18),
      ],
    );
  }
}
