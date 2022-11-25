import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/todo_tile.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.todos, required this.category});

  final List<Todo?> todos;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: SizeUtil.pSymmetric(h: 18, v: 22),
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todoEntity = todos[index];

        return TodoTile(
          todoEntity: todoEntity!,
          category: category,
        );
      },
    );
  }
}
