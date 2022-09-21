import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_form/todo_form_controller.dart';
import 'package:flutter_todo_ddd/modules/todo/application/todo_provider.dart';
import 'package:flutter_todo_ddd/modules/todo/domain/entities/todo.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/date_formatter.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';

class TodoTile extends ConsumerWidget {
  const TodoTile({Key? key, required this.todoEntity}) : super(key: key);

  final Todo todoEntity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(todoFormProvider.notifier);

    final todo = TodoDto.fromDomain(todoEntity);

    return Container(
      height: SizeUtil.h(90),
      width: SizeUtil.sw(1),
      margin: SizeUtil.pSymmetric(v: 6),
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
                  Text(
                    dateFormat(todo.time),
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: SizeUtil.fontSize(16),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
