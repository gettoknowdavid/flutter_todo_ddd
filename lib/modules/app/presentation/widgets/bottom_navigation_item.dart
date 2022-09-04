import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/domain/bottom_navigation.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class BottomNavigationItem extends ConsumerWidget {
  final BottomNavigation item;

  final void Function()? onSelect;
  const BottomNavigationItem({
    Key? key,
    required this.item,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavState = ref.watch(bottomNavProvider);
    final index = bottomNavState.pages.indexOf(item);
    final selected = bottomNavState.currentIndex == index;

    final boxColor = selected ? const Color.fromRGBO(255, 133, 76, 0.3) : null;

    return GestureDetector(
      onTap: onSelect,
      child: index == 2
          ? const _AddIcon()
          : AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: SizeUtil.h(44),
              width: SizeUtil.h(44),
              decoration: BoxDecoration(
                borderRadius: SizeUtil.borderRadius(16),
                color: boxColor,
              ),
              child: AppIcon(
                icon: item.icon,
                semantic: item.icon,
                height: SizeUtil.h(24),
                width: SizeUtil.w(24),
              ),
            ),
    );
  }
}

class _AddIcon extends StatelessWidget {
  const _AddIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final addIconColor = theme.bottomNavigationBarTheme.selectedItemColor;

    return Container(
      height: SizeUtil.h(60),
      width: SizeUtil.h(60),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: SizeUtil.borderRadius(20),
      ),
      child: Icon(Icons.add, color: addIconColor),
    );
  }
}
