import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/add_category_button.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/add_todo_date_field.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/category_drop_down.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AddTodoBottomSheet extends ConsumerStatefulWidget {
  const AddTodoBottomSheet({super.key});

  @override
  ConsumerState<AddTodoBottomSheet> createState() => _AddTodoBottomSheetState();
}

class _AddTodoBottomSheetState extends ConsumerState<AddTodoBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(todoFormProvider);
    final event = ref.watch(todoFormProvider.notifier);

    ref.listen<TodoFormState>(todoFormProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold(
          (failure) => failure.maybeMap(
            orElse: () => '',
            insufficientPermissions: (value) => 'You do not have permission.',
            serverError: (value) => 'Server error. Try again.',
          ),
          (success) => Modular.to.pop(),
        ),
      );
    });

    return StatefulBuilder(builder: (context, setState) {
      return SingleChildScrollView(
        padding: SizeUtil.pFromLTRB(18, 14, 18, 20),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const _HandleBar(),
              SizeUtil.vS(20),
              Text('Add a new todo', style: AppTextStyles.addNewTodoHeading),
              SizeUtil.vS(16),
              AppTextField(
                hint: 'Title',
                label: 'Title',
                enabled: !state.loading,
                onChanged: (value) => event.mapEventsToStates(
                  TodoFormEvent.titleChanged(value),
                ),
                validator: (_) => state.todo.title.value.fold(
                  (f) => f.mapOrNull(
                    titleLengthExceeded: (_) => 'Title length exceeds 60',
                  ),
                  (_) => null,
                ),
              ),
              SizeUtil.vS(14),
              AppTextField(
                enabled: !state.loading,
                maxLines: 3,
                hint: 'Description',
                label: 'Description',
                onChanged: (value) => event.mapEventsToStates(
                  TodoFormEvent.descChanged(value),
                ),
                validator: (_) => state.todo.description?.value.fold(
                  (f) => f.mapOrNull(
                    descLengthExceeded: (_) => 'Description length exceeds 250',
                  ),
                  (_) => null,
                ),
              ),
              SizeUtil.vS(14),
              Row(
                children: [
                  const Expanded(
                    child: CategoryDropDown(),
                  ),
                  SizeUtil.hS(10),
                  const AddCategoryButton(),
                ],
              ),
              SizeUtil.vS(14),
              const AddTodoDateField(),
              SizeUtil.vS(14),
              SwitchListTile(
                value: state.todo.isDone,
                title: const Text('Mark as completed?'),
                contentPadding: SizeUtil.pOnly(l: 22),
                onChanged: (value) {
                  event.mapEventsToStates(TodoFormEvent.isDoneChanged(value));
                },
              ),
              SizeUtil.vS(30),
              AppButton(
                disabled: !state.todo.title.isValid() ||
                    !state.todo.description!.isValid(),
                onPressed: () {
                  event.mapEventsToStates(const TodoFormEvent.saved());
                },
                loading: state.loading,
                title: 'Add',
              ),
              SizeUtil.vS(10),
            ],
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    // final formState = ref.read(todoFormProvider);
    // final formEvent = ref.read(todoFormProvider.notifier);
    // formEvent.mapEventsToStates(
    //   TodoFormEvent.initialized(some(formState.todo)),
    // );
    super.initState();
  }
}

class _HandleBar extends StatelessWidget {
  const _HandleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: SizeUtil.h(4),
        width: SizeUtil.sw(0.15),
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: SizeUtil.borderRadius(20),
        ),
      ),
    );
  }
}
