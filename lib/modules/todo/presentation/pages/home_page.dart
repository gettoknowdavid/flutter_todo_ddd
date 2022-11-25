import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_bar_avatar.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/category_list.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/empty_search_list.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/home_name_header.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/search_box.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/search_list.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(todoSearchProvider);

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
            const HomeNameHeader(),
            SizeUtil.vS(30),
            const SearchBox(),
            SizeUtil.vS(30),
            if (searchState.title.isEmpty) const CategoryList(),
            if (searchState.todos.isNotEmpty)
              const SearchList()
            else
              const EmptySearchList(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    final todoEvent = ref.read(todoProvider.notifier);

    todoEvent.mapEventsToStates(const TodoEvent.watchAll());
    todoEvent.mapEventsToStates(const TodoEvent.watchDone());
    todoEvent.mapEventsToStates(const TodoEvent.watchToday());
    todoEvent.mapEventsToStates(const TodoEvent.watchUpcoming());
  }
}
