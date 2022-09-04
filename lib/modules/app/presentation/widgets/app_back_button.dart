import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppBackButton extends StatelessWidget {
  final String title;

  const AppBackButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const BackButtonIcon(),
      label: Text(title),
      onPressed: () => Modular.to.pop(),
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColorLight,
        padding: SizeUtil.pFromLTRB(12, 0, 12, 0),
      ),
    );
  }
}
