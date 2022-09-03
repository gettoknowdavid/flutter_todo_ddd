import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/domain/bottom_navigation.dart';

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
    final bottomNavEvent = ref.watch(bottomNavProvider.notifier);

    final theme = Theme.of(context);
    final bNBTheme = Theme.of(context).bottomNavigationBarTheme;

    final index = bottomNavState.pages.indexOf(item);
    final color = bottomNavState.currentIndex == index
        ? bNBTheme.selectedItemColor
        : bNBTheme.unselectedItemColor;

    return GestureDetector(
      onTap: onSelect,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            color: color,
          ),
        ],
      ),
    );
  }
}
