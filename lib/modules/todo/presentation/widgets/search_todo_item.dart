
import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/todo/infrastructure/dtos/todo_dto.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class SearchTodoItem extends StatelessWidget {
  const SearchTodoItem({Key? key, required this.todo}) : super(key: key);

  final TodoDto todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtil.h(60),
      width: SizeUtil.sw(1),
      margin: SizeUtil.pOnly(b: 12),
      padding: SizeUtil.pSymmetric(h: 16),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: SizeUtil.borderRadius(16),
        boxShadow: [
          BoxShadow(
            blurRadius: SizeUtil.r(4),
            color: Colors.black12,
          )
        ],
      ),
      child: Text(
        todo.title,
        maxLines: 1,
        style: TextStyle(
          color: AppColors.black,
          fontSize: SizeUtil.fontSize(16),
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
