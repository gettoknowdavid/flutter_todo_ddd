import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    required this.index,
  }) : super(key: key);

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: (index % 2.05 + 1.3) * 90,
        padding: SizeUtil.pAll(18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: category.color.getOrCrash()!,
          borderRadius: SizeUtil.borderRadius(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category.title.getOrCrash()!,
              style: TextStyle(
                fontSize: SizeUtil.fontSize(18),
                color: ThemeData.estimateBrightnessForColor(
                            category.color.getOrCrash()!) ==
                        Brightness.light
                    ? AppColors.black
                    : AppColors.white,
              ),
            ),
            SizeUtil.hS(10),
            Text(
              '4 Tasks',
              style: TextStyle(
                fontSize: SizeUtil.fontSize(14),
                color: ThemeData.estimateBrightnessForColor(
                            category.color.getOrCrash()!) ==
                        Brightness.light
                    ? Colors.black45
                    : Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
