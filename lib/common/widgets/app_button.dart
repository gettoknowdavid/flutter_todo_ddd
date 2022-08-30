import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/widgets/app_loading_indicator.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.disabled = false,
    this.loading = false,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final bool disabled;
  final bool loading;
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled || loading ? null : onPressed,
      child: loading ? const AppLoadingIndicator() : Text(title),
    );
  }
}
