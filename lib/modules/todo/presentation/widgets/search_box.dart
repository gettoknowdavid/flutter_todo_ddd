import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_search/todo_search_controller.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class SearchBox extends ConsumerWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(todoSearchProvider);
    final event = ref.watch(todoSearchProvider.notifier);

    return Padding(
      padding: SizeUtil.pSymmetric(h: 18),
      child: TextFormField(
        enabled: !state.loading,
        onChanged: (value) => event.mapEventsToStates(
          TodoSearchEvent.titleChanged(value),
        ),
        decoration: InputDecoration(
          hintText: 'Search for todos',
          prefixIcon: AppIcon(
            padding: SizeUtil.pSymmetric(h: 16),
            icon: AppIcons.search,
            semantic: 'Search icon',
            height: SizeUtil.h(22),
            color: theme.primaryColorDark,
          ),
        ),
      ),
    );
  }
}
