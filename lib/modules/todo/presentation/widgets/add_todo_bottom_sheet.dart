import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/todo_mapper.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/add_todo_date_field.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/handle_bar.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AddTodoBottomSheet extends ConsumerStatefulWidget {
  const AddTodoBottomSheet({super.key, this.isEdit = false, this.todo});

  final bool isEdit;
  final TodoDto? todo;

  @override
  ConsumerState<AddTodoBottomSheet> createState() => _AddTodoBottomSheetState();
}

class _AddTodoBottomSheetState extends ConsumerState<AddTodoBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(todoFormProvider);
    final event = ref.watch(todoFormProvider.notifier);

    final todo = widget.isEdit ? TodoDto.fromDomain(state.todo) : null;

    ref.listen<TodoFormState>(todoFormProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold(
          (failure) => failure.maybeMap(
            orElse: () => '',
            insufficientPermissions: (value) => 'You do not have permission.',
            serverError: (value) => 'Server error. Try again.',
          ),
          (success) => widget.isEdit ? null : Modular.to.pop(),
        ),
      );
    });

    return StatefulBuilder(builder: (context, setState) {
      return SingleChildScrollView(
        padding: SizeUtil.pFromLTRB(18, 14, 18, 14),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HandleBar(),
              SizeUtil.vS(10),
              Text(
                widget.isEdit ? 'Edit Todo' : 'Add a new todo',
                style: AppTextStyles.addNewTodoHeading,
              ),
              SizeUtil.vS(16),
              AppTextField(
                hint: 'Title',
                label: 'Title',
                enabled: !state.loading,
                initialValue: todo?.title,
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
              SizeUtil.vS(10),
              AppTextField(
                enabled: !state.loading,
                maxLines: 3,
                hint: 'Description',
                label: 'Description',
                initialValue: todo?.description,
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
              SizeUtil.vS(10),
              AddTodoDateField(initialDate: todo?.time),
              SwitchListTile(
                value: state.todo.isDone,
                title: const Text('Mark as completed?'),
                contentPadding: SizeUtil.pOnly(l: 0),
                onChanged: (value) {
                  event.mapEventsToStates(TodoFormEvent.isDoneChanged(value));
                  return;
                },
              ),
              SizeUtil.vS(16),
              AppButton(
                disabled: !widget.isEdit && !state.todo.title.isValid() ||
                    !state.todo.description!.isValid(),
                onPressed: () {
                  if (widget.isEdit) {
                    event.mapEventsToStates(TodoFormEvent.edit(state.todo));
                    Modular.to.pop();
                  } else {
                    event.mapEventsToStates(const TodoFormEvent.saved());
                  }
                },
                loading: state.loading,
                title: widget.isEdit ? 'Save' : 'Add',
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    final formEvent = ref.read(todoFormProvider.notifier);
    if (widget.isEdit) {
      formEvent.mapEventsToStates(
        TodoFormEvent.initialized(some(TodoMapper().toDomain(widget.todo)!)),
      );
    }
    super.initState();
  }
}
