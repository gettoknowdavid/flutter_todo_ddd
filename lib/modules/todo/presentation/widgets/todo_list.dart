import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/todo_tile.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';


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
