import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category/category_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category_form/category_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/category_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CategoryDropDown extends ConsumerWidget {
  const CategoryDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryProvider);
    final todoState = ref.watch(todoFormProvider);
    final todoEvent = ref.watch(todoFormProvider.notifier);

    final categoryEvent = ref.watch(categoryProvider.notifier);

    return DropdownButton2<Category?>(
      items: state is CategoryLoading
          ? []
          : (state as CategorySuccess)
              .categories
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
        todoEvent.mapEventsToStates(TodoFormEvent.categoryChanged(value!));
      },
      underline: const SizedBox(),
    );
  }
}

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => const AddCategoryDialog(),
        );
      },
      constraints: BoxConstraints(
        minWidth: SizeUtil.h(40),
        minHeight: SizeUtil.h(40),
      ),
      shape: CircleBorder(
        side: BorderSide(
          color: Colors.black12,
          width: SizeUtil.r(2),
        ),
      ),
      child: Icon(Icons.add, size: SizeUtil.r(20)),
    );
  }
}

class AddCategoryDialog extends ConsumerWidget {
  const AddCategoryDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryFormProvider);
    final event = ref.watch(categoryFormProvider.notifier);
    final todoEvent = ref.watch(todoFormProvider.notifier);

    final categoryState = ref.watch(categoryProvider);
    final categoryEvent = ref.watch(categoryProvider.notifier);

    ref.listen<CategoryFormState>(categoryFormProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold(
          (failure) => failure.maybeMap(
            orElse: () => '',
          ),
          (success) {
            Modular.to.pop();

            todoEvent.mapEventsToStates(
              TodoFormEvent.categoryChanged(
                  (categoryState as CategorySuccess).categories.last!),
            );
          },
        ),
      );
    });

    final stateColor = state.category.color.getOrCrash();
    const colors = ICategoryColor.colors;

    return StatefulBuilder(
      builder: (context, setState) {
        return Dialog(
          alignment: Alignment.bottomCenter,
          insetPadding: SizeUtil.pSymmetric(h: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(SizeUtil.r(22)),
            ),
          ),
          child: Container(
            padding: SizeUtil.pAll(22),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add a new Category',
                  style: AppTextStyles.addNewTodoHeading,
                ),
                SizeUtil.vS(20),
                const Text('Category name'),
                SizeUtil.vS(6),
                AppTextField(
                  hint: 'Name',
                  enabled: !state.loading,
                  onChanged: (value) => event.mapEventsToStates(
                    CategoryFormEvent.titleChanged(value),
                  ),
                  validator: (_) => state.category.title.value.fold(
                    (f) => f.mapOrNull(empty: (_) => 'Name cannot be empty'),
                    (_) => null,
                  ),
                ),
                SizeUtil.vS(26),
                const Text('Select a color'),
                SizeUtil.vS(6),
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runAlignment: WrapAlignment.start,
                  spacing: SizeUtil.r(10),
                  runSpacing: SizeUtil.r(10),
                  children: [
                    for (var i = 0; i < colors.length; i++) ...[
                      GestureDetector(
                        onTap: () {
                          event.mapEventsToStates(
                            CategoryFormEvent.colorChanged(colors[i]),
                          );
                        },
                        child: CircleAvatar(
                          radius: SizeUtil.r(15),
                          backgroundColor: Colors.grey.shade400,
                          child: CircleAvatar(
                            radius: SizeUtil.r(14),
                            backgroundColor: colors[i],
                            child: stateColor == ICategoryColor.colors[i]
                                ? const Icon(Icons.check)
                                : null,
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
                SizeUtil.vS(36),
                AppButton(
                  disabled: !state.category.title.isValid(),
                  onPressed: () {
                    event.mapEventsToStates(
                      const CategoryFormEvent.categoryAddPressed(),
                    );
                  },
                  loading: state.loading,
                  title: 'Add',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Cat {
  final int id;
  final String title;

  const Cat(this.id, this.title);
}
