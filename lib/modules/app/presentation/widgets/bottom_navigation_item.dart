import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/domain/bottom_navigation.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class BottomNavigationItem extends ConsumerWidget {
  const BottomNavigationItem({
    Key? key,
    required this.item,
    required this.onSelect,
  }) : super(key: key);

  final BottomNavigation item;
  final void Function()? onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavState = ref.watch(bottomNavProvider);
    final index = bottomNavState.pages.indexOf(item);
    final selected = bottomNavState.currentIndex == index;

    final theme = Theme.of(context);

    final color = selected
        ? theme.bottomNavigationBarTheme.selectedItemColor
        : theme.bottomNavigationBarTheme.unselectedItemColor;

    return GestureDetector(
      onTap: onSelect,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: SizeUtil.h(44),
        padding: SizeUtil.pOnly(right: 16),
        decoration: BoxDecoration(
          color: selected ? theme.colorScheme.secondary : null,
          borderRadius: SizeUtil.borderRadius(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIcon(
              icon: item.icon,
              color: color,
              semantic: item.icon,
              height: SizeUtil.h(24),
              width: SizeUtil.w(24),
            ),
            if (selected) Text(item.title, style: TextStyle(color: color)),
          ],
        ),
      ),
    );
  }
}
