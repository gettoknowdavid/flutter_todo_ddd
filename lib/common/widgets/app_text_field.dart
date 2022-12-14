import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/common/constants/app_icons.dart';
import 'package:flutter_todo_ddd/common/widgets/app_icon.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.isPassword = false,
    required this.hint,
    this.label,
    this.keyboardType,
    this.autocorrect = false,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.initialValue,
    this.onTap,
    this.controller,
    this.maxLines = 1,
    this.maxLength,
  }) : super(key: key);

  final String hint;
  final bool isPassword;
  final String? label;
  final TextInputType? keyboardType;
  final bool autocorrect;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool enabled;
  final String? initialValue;
  final void Function()? onTap;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      obscureText: widget.isPassword ? !obscure : obscure,
      onTap: widget.onTap,
      controller: widget.controller,
      initialValue: widget.initialValue,
      keyboardType: widget.keyboardType,
      autocorrect: widget.autocorrect,
      onChanged: widget.onChanged,
      validator: widget.validator,
      enabled: widget.enabled,
      style: theme.textTheme.titleMedium,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.label,
        suffixIcon: !widget.isPassword
            ? null
            : AppIcon(
                onPressed: () => setState(() => obscure = !obscure),
                icon: obscure ? AppIcons.hide : AppIcons.show,
                semantic: 'Hide Password',
              ),
      ),
    );
  }
}
