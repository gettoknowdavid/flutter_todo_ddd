// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_todo_ddd/modules/todo/application/category/category_controller.dart';
// import 'package:flutter_todo_ddd/modules/todo/application/category_provider.dart';
// import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
// import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/category_tile.dart';
// import 'package:flutter_todo_ddd/utils/size_util.dart';
// import 'package:shimmer_animation/shimmer_animation.dart';

// class CategoryList extends ConsumerWidget {
//   const CategoryList({Key? key, required this.categories}) : super(key: key);

//   final List<Category?> categories;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final categoryState = ref.watch(categoryProvider);

//     final loading = categoryState is CategoryLoading;

//     final newCategories = [Category.all(), ...categories];

//     return Container(
//       padding: SizeUtil.pSymmetric(h: 18),
//       child: MasonryGridView.extent(
//         primary: false,
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: loading ? 4 : newCategories.length,
//         maxCrossAxisExtent: SizeUtil.sw(0.5),
//         mainAxisSpacing: SizeUtil.h(12),
//         crossAxisSpacing: SizeUtil.h(12),
//         itemBuilder: (context, index) {
//           return Shimmer(
//             enabled: loading,
//             child: CategoryTile(
//               category: newCategories[index]!,
//               index: index,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
