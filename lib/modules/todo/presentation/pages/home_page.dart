import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_loading_indicator.dart';
import 'package:flutter_todo_ddd/modules/app/application/app_providers.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_bar_avatar.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category/category_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/category_list.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/search_box.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/get_greeting.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryState = ref.watch(categoryProvider);

    return Scaffold(
      appBar: AppBar(
        actions: const [
          AppBarAvatar(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizeUtil.vS(10),
            const _NameHeader(),
            SizeUtil.vS(30),
            const SearchBox(),
            SizeUtil.vS(30),
            if (categoryState is CategorySuccess) ...[
              CategoryList(categories: categoryState.categories),
            ]
          ],
        ),
      ),
    );
  }
}

class _NameHeader extends ConsumerWidget {
  const _NameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? name = ref.watch(
      appProvider.select((a) => a.user!.name.getOrCrash()),
    );

    String? firstName = name?.split(' ')[0];

    String text = "Hello $firstName";

    return Padding(
      padding: SizeUtil.pSymmetric(h: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(text, style: AppTextStyles.homeNameHeader),
          Text(greeting, style: AppTextStyles.homeHeaderGreeting),
        ],
      ),
    );
  }
}
