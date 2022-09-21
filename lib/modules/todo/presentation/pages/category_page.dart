import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_back_button.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_list_loading_indicator.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/todo_list.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryPage extends ConsumerWidget {
  final Category category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoState = ref.watch(todoProvider);

    final title = category.title.getOrCrash()!;

    if (todoState is TodoFailed) {
      return Scaffold(
        appBar: _AppBar(title: title),
        body: const Center(
          child: Text('You currently have no todos'),
        ),
      );
    }

    if (todoState is TodoLoading) {
      return Scaffold(
        appBar: _AppBar(title: title),
        body: const AppListLoadingIndicator(),
      );
    }

    return Scaffold(
      appBar: _AppBar(title: title),
      body: TodoList(todos: (todoState as TodoSuccess).todos),
    );
  }
}

class _AppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const _AppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      leadingWidth: 0,
      title: Row(
        children: [
          const AppBackButton(title: 'Back'),
          SizeUtil.hS(20),
          Text(title),
        ],
      ),
    );
  }
}
