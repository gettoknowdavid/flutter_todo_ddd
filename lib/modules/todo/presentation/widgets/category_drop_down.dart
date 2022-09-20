import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category/category_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryDropDown extends ConsumerWidget {
  const CategoryDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryProvider);
    final todoState = ref.watch(todoFormProvider);
    final todoEvent = ref.watch(todoFormProvider.notifier);

    return DropdownButton2<Category?>(
      items: state is CategoryLoading ||
              (state as CategorySuccess).categories.isEmpty
          ? []
          : state.categories
              .map(
                (e) => DropdownMenuItem<Category?>(
                  value: e,
                  child: Text(e!.title.getOrCrash()!),
                ),
              )
              .toList(),
      buttonHeight: SizeUtil.h(58),
      buttonDecoration: BoxDecoration(
        borderRadius: SizeUtil.borderRadius(20),
        color: Theme.of(context).primaryColorLight,
        border: Border.all(color: Colors.transparent),
      ),
      buttonWidth: SizeUtil.sh(1),
      buttonPadding: SizeUtil.pOnly(l: 22, r: 12),
      dropdownDecoration: BoxDecoration(
        borderRadius: SizeUtil.borderRadius(20),
        color: Theme.of(context).primaryColorLight,
      ),
      hint: const Text('Select category'),
      itemHeight: SizeUtil.h(58),
      value: todoState.todo.category?.getOrCrash(),
      onChanged: (value) {
        todoEvent.mapEventsToStates(TodoFormEvent.categoryChanged(value));
      },
      underline: const SizedBox(),
    );
  }
}
