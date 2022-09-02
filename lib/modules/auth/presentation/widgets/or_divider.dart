import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_text_styles.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.grey.shade200,
            height: SizeUtil.h(1),
          ),
        ),
        SizeUtil.hS(16),
        Text(
          'or',
          style: AppTextStyles.authSubheading,
          textAlign: TextAlign.center,
        ),
        SizeUtil.hS(16),
        Expanded(
          child: Container(
            color: Colors.grey.shade200,
            height: SizeUtil.h(1),
          ),
        ),
      ],
    );
  }
}
