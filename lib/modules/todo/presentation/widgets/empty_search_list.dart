import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class EmptySearchList extends StatelessWidget {
  const EmptySearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtil.sh(0.12),
      width: SizeUtil.sw(1),
      margin: SizeUtil.pSymmetric(h: 16),
      padding: SizeUtil.pSymmetric(h: 16),
      alignment: Alignment.center,
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
      child: Text(
        'No todos like this, try again.',
        maxLines: 1,
        textAlign: TextAlign.center,
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
