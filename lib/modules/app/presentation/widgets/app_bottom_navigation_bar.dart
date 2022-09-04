import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/application/bottom_navigation/bottom_navigation_event.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/bottom_navigation_item.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavState = ref.watch(bottomNavProvider);
    final bottomNavEvent = ref.watch(bottomNavProvider.notifier);

    int pagesLength = bottomNavState.pages.length;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: SizeUtil.sw(1),
      height: SizeUtil.h(80),
      // color: Colors.pink,
      padding: SizeUtil.pSymmetric(h: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 0; i < pagesLength; i++) ...[
            BottomNavigationItem(
              item: bottomNavState.pages[i],
              onSelect: () {
                final index = bottomNavState.pages.indexOf(
                  bottomNavState.pages[i],
                );

                bottomNavEvent.mapEventsToStates(
                  BottomNavigationEvent.pageUpdated(index),
                );
              },
            )
          ],
        ],
      ),
    );
  }
}
