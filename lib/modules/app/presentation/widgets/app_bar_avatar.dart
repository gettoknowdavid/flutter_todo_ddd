import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/auth/infrastructure/dtos/user_dto.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppBarAvatar extends ConsumerWidget {
  const AppBarAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appProvider);

    final user = UserDto.fromDomain(appState.user!);

    final theme = Theme.of(context);

    return Container(
      margin: SizeUtil.pOnly(r: 18),
      child: GestureDetector(
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
    );
  }
}
