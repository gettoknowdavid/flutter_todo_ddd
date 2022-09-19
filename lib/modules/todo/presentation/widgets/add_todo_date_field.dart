import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/utils/date_formatter.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AddTodoDateField extends ConsumerStatefulWidget {
  const AddTodoDateField({Key? key}) : super(key: key);

  @override
  ConsumerState<AddTodoDateField> createState() => _AddTodoDateFieldState();
}

class _AddTodoDateFieldState extends ConsumerState<AddTodoDateField> {
  late TextEditingController timeController;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(todoFormProvider);
    final event = ref.watch(todoFormProvider.notifier);
    timeController = TextEditingController(
      text: dateFormat(state.todo.time),
    );

    return TextFormField(
      controller: timeController,
      decoration: InputDecoration(
        hintText: 'Select date and time',
        suffixIcon: AppIcon(
          icon: AppIcons.calendar,
          semantic: 'Calendar',
          width: SizeUtil.w(20),
        ),
      ),
      onTap: () async {
        DateTime? date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2025),
        );

        TimeOfDay? time = await showTimePicker(
          context: context,
          initialTime: const TimeOfDay(hour: 9, minute: 0),
        );

        if (date != null && time != null) {
          DateTime dt = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
          event.mapEventsToStates(TodoFormEvent.timeChanged(dt));
          setState(() => timeController.text = dateFormat(dt));
        }
      },
      readOnly: true,
    );
  }

  @override
  void dispose() {
    timeController.dispose();
    super.dispose();
  }
}
