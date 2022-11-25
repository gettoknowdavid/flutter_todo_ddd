import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class HandleBar extends StatelessWidget {
  const HandleBar({super.key});

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
