import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_button.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/date_formatter.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

const _items = <Cat>[
  Cat(1, 'Home'),
  Cat(2, 'Work'),
  Cat(2, 'Church'),
];

class AddTodoBottomSheet extends ConsumerStatefulWidget {
  const AddTodoBottomSheet({super.key});

  @override
  ConsumerState<AddTodoBottomSheet> createState() => _AddTodoBottomSheetState();
}

class _AddTodoBottomSheetState extends ConsumerState<AddTodoBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController timeController;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(todoFormProvider);
    final event = ref.watch(todoFormProvider.notifier);

    timeController = TextEditingController(
      text: dateFormat(state.todo.time),
    );

    return StatefulBuilder(builder: (context, setState) {
      return SingleChildScrollView(
        padding: SizeUtil.pFromLTRB(18, 14, 18, 20),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              TextFormField(
                enabled: !state.loading,
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: 'Description',
                  label: Text('Description'),
                ),
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
                  Expanded(
                    child: DropdownButton2<String>(
                      items: _items
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.title,
                              child: Text(e.title),
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
                      onChanged: (value) {},
                      underline: const SizedBox(),
                    ),
                  ),
                  SizeUtil.hS(10),
                  RawMaterialButton(
                    onPressed: () {},
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
                  ),
                ],
              ),
              SizeUtil.vS(14),
              TextFormField(
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
              ),
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
                  print(state.todo);
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

class Cat {
  final int id;
  final String title;

  const Cat(this.id, this.title);
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
