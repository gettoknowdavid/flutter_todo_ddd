import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/category_tile.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key, required this.categories}) : super(key: key);

  final List<Category?> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SizeUtil.pSymmetric(h: 18),
      height: SizeUtil.sh(0.55),
      child: MasonryGridView.extent(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        maxCrossAxisExtent: SizeUtil.sw(0.5),
        mainAxisSpacing: SizeUtil.h(18),
        crossAxisSpacing: SizeUtil.h(18),
        itemBuilder: (context, index) {
          return CategoryTile(
            category: categories[index]!,
            index: index,
          );
        },
      ),
    );
  }
}
