import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/category_tile.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SizeUtil.pSymmetric(h: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: SizeUtil.fontSize(20),
              color: Colors.black54,
            ),
          ),
          SizeUtil.vS(14),
          MasonryGridView.extent(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: Category.values.length,
            maxCrossAxisExtent: SizeUtil.sw(0.45),
            mainAxisSpacing: SizeUtil.h(12),
            crossAxisSpacing: SizeUtil.h(12),
            itemBuilder: (context, index) {
              return CategoryTile(
                category: Category.values[index],
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}
