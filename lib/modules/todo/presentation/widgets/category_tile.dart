import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/pages/category_page.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryTile extends ConsumerWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    required this.index,
  }) : super(key: key);

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = ThemeData.estimateBrightnessForColor(category.color) ==
        Brightness.light;

    final todoEvent = ref.watch(todoProvider.notifier);

    return GestureDetector(
      onTap: () {
        switch (category) {
          case Category.all:
            todoEvent.mapEventsToStates(const TodoEvent.watchAll());
            break;
          case Category.done:
            todoEvent.mapEventsToStates(const TodoEvent.watchDone());
            break;
          case Category.today:
            todoEvent.mapEventsToStates(const TodoEvent.watchToday());
            break;
          case Category.upComing:
            todoEvent.mapEventsToStates(const TodoEvent.watchUpcoming());
            break;
          default:
            null;
        }

        Modular.to.push(
          MaterialPageRoute(
            builder: (context) => CategoryPage(category: category),
          ),
        );
      },
      child: Container(
        height: (index % 2.03 + 1.3) * 80,
        padding: SizeUtil.pAll(18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: SizeUtil.borderRadius(30),
          border: Border.all(color: AppColors.lavender),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category.name,
              style: TextStyle(
                fontSize: SizeUtil.fontSize(18),
                fontWeight: FontWeight.w600,
                color: isLight ? AppColors.black : AppColors.white,
              ),
            ),
            SizeUtil.hS(10),
            Text(
              '4 Tasks',
              style: TextStyle(
                fontSize: SizeUtil.fontSize(14),
                color: isLight ? Colors.black45 : Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
