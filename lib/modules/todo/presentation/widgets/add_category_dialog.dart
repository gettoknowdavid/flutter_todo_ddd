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
import 'package:flutter_todo_ddd/modules/todo/domain/value_objects.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AddCategoryDialog extends ConsumerWidget {
  const AddCategoryDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryFormProvider);
    final event = ref.watch(categoryFormProvider.notifier);
    final todoEvent = ref.watch(todoFormProvider.notifier);

    final categoryState = ref.watch(categoryProvider);

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
