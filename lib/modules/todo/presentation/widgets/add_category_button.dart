import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/modules/todo/presentation/widgets/add_category_dialog.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
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
    );
  }
}
