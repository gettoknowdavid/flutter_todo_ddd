import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo/todo_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/category.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/add_todo_bottom_sheet.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/date_formatter.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';

class TodoTile extends ConsumerWidget {
  const TodoTile({super.key, required this.todoEntity, required this.category});

  final Todo todoEntity;
  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(todoFormProvider.notifier);
    final todoEvent = ref.watch(todoProvider.notifier);

    final todo = TodoDto.fromDomain(todoEntity);

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          useRootNavigator: true,
          builder: (context) => AddTodoBottomSheet(isEdit: true, todo: todo),
        );
      },
      child: Container(
        height: SizeUtil.h(90),
        width: SizeUtil.sw(1),
        margin: SizeUtil.pOnly(b: 12),
        padding: SizeUtil.pSymmetric(h: 8, v: 18),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: SizeUtil.borderRadius(26),
          boxShadow: [
            BoxShadow(
              blurRadius: SizeUtil.r(4),
              color: Colors.black12,
            )
          ],
        ),
        child: Row(
          children: [
            Checkbox(
              value: todo.isDone,
              onChanged: (value) {
                event.mapEventsToStates(
                  TodoFormEvent.edit(todoEntity.copyWith(isDone: value!)),
                );
                switch (category) {
                  case Category.all:
                    todoEvent.mapEventsToStates(const TodoEvent.watchAll());
                    break;
                  case Category.done:
                    todoEvent.mapEventsToStates(const TodoEvent.watchDone());
                    break;
                  case Category.today:
                    todoEvent.mapEventsToStates(const TodoEvent.watchToday());
                    break;
                  case Category.upComing:
                    todoEvent
                        .mapEventsToStates(const TodoEvent.watchUpcoming());
                    break;
                  default:
                    todoEvent.mapEventsToStates(const TodoEvent.watchAll());
                }
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    todo.title,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: SizeUtil.fontSize(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (todo.time != null) ...[
                    SizeUtil.vS(4),
                    Text(
                      'Due ${dateFormat(todo.time)}',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: SizeUtil.fontSize(12),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
