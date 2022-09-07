import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_app_bar.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Create \n New Todo',
              style: TextStyle(fontSize: SizeUtil.fontSize(30)),
            ),
          ],
        ),
      ),
    );
  }
}
