import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/widgets/app_text_field.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_back_button.dart';
import 'package:flutter_todo_ddd/modules/app/presentation/widgets/app_bar_avatar.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: const AppBackButton(title: 'Go Back'),
        actions: const [
          AppBarAvatar(),
        ],
      ),
      body: SingleChildScrollView(
        padding: SizeUtil.pSymmetric(h: 18, v: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create \nNew Todo',
              style: TextStyle(
                fontSize: SizeUtil.fontSize(24),
                fontWeight: FontWeight.w900,
                height: SizeUtil.h(1.45),
              ),
            ),
            SizeUtil.vS(30),
            const AppTextField(hint: 'Title'),
            SizeUtil.vS(20),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Description',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
