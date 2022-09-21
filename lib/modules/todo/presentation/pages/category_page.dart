import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_back_button.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/date_formatter.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoState = ref.watch(todoProvider);

    if (todoState is TodoFailed) {
      return Scaffold(
        appBar: _AppBar(category: category),
        body: const Center(
          child: Text('You currently have no todos'),
        ),
      );
    }

    if (todoState is TodoLoading) {
      return Scaffold(
        appBar: _AppBar(category: category),
        body: ListView.builder(
          padding: SizeUtil.pSymmetric(h: 18, v: 22),
          itemCount: 5,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Shimmer(
              enabled: true,
              child: Container(
                height: SizeUtil.h(90),
                width: SizeUtil.sw(1),
                margin: SizeUtil.pSymmetric(v: 6),
                decoration: BoxDecoration(
                  color: AppColors.lavender,
                  borderRadius: SizeUtil.borderRadius(26),
                ),
              ),
            );
          },
        ),
      );
    }

    final todos = (todoState as TodoSuccess).todos;

    return Scaffold(
      appBar: _AppBar(category: category),
      body: TodoList(todos: todos),
    );
  }
}

class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      leadingWidth: 0,
      title: Row(
        children: [
          const AppBackButton(title: 'Back'),
          SizeUtil.hS(20),
          Text(category.title.getOrCrash()!),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key, required this.todos}) : super(key: key);

  final List<Todo?> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: SizeUtil.pSymmetric(h: 18, v: 22),
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todoEntity = todos[index];

        return TodoTile(todoEntity: todoEntity!);
      },
    );
  }
}

class TodoTile extends ConsumerWidget {
  const TodoTile({Key? key, required this.todoEntity}) : super(key: key);

  final Todo todoEntity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(todoFormProvider.notifier);

    final todo = TodoDto.fromDomain(todoEntity);

    return Container(
      height: SizeUtil.h(90),
      width: SizeUtil.sw(1),
      margin: SizeUtil.pSymmetric(v: 6),
      padding: SizeUtil.pSymmetric(h: 8, v: 18),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: SizeUtil.borderRadius(26),
        boxShadow: [
          BoxShadow(
            blurRadius: SizeUtil.r(4),
            color: Colors.black12,
          )
        ],
      ),
      child: Row(
        children: [
          Checkbox(
            value: todo.isDone,
            onChanged: (value) {
              event.mapEventsToStates(
                TodoFormEvent.edit(todoEntity.copyWith(isDone: value!)),
              );
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  todo.title,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: SizeUtil.fontSize(16),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (todo.time != null) ...[
                  Text(
                    dateFormat(todo.time),
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: SizeUtil.fontSize(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
