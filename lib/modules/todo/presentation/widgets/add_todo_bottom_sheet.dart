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
import 'package:flutter_todo_ddd/utils/size_util.dart';

const _items = <Cat>[
  Cat(1, 'Home'),
  Cat(2, 'Work'),
  Cat(2, 'Church'),
];

class AddTodoBottomSheet extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  AddTodoBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoFormProvider);
    final event = ref.watch(todoFormProvider.notifier);

    return SingleChildScrollView(
      padding: SizeUtil.pFromLTRB(18, 14, 18, 20),
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
              (f) => f.mapOrNull(empty: (_) => 'Please title is required'),
              (_) => null,
            ),
          ),
          SizeUtil.vS(14),
          const TextField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Description',
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
          TextField(
            decoration: InputDecoration(
              hintText: 'Friday, 9th (10:00 AM)',
              suffixIcon: AppIcon(
                icon: AppIcons.calendar,
                semantic: 'Calendar',
                width: SizeUtil.w(20),
              ),
            ),
          ),
          SizeUtil.vS(14),
          SwitchListTile(
            value: true,
            title: const Text('Mark as completed?'),
            contentPadding: SizeUtil.pOnly(l: 22),
            onChanged: (value) {},
          ),
          SizeUtil.vS(30),
          AppButton(onPressed: () {}, title: 'Add'),
          SizeUtil.vS(10),
        ],
      ),
    );
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
