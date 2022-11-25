import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/search_todo_item.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class SearchList extends ConsumerWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(todoSearchProvider);

    return SizedBox(
      height: SizeUtil.sh(0.4),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: SizeUtil.pSymmetric(h: 18, v: 22),
        itemCount: searchState.todos.length,
        itemBuilder: (context, index) {
          final todoEntity = searchState.todos[index];
          final todo = TodoDto.fromDomain(todoEntity!);

          return SearchTodoItem(todo: todo);
        },
      ),
    );
  }
}
