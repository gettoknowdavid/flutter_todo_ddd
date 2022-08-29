import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_theme.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppTextStyles {
  AppTextStyles._();

  static final ThemeData _theme = AppTheme.theme;

  static final TextStyle authHeading = TextStyle(
    fontSize: SizeUtil.fontSize(26),
    fontWeight: FontWeight.bold,
  );

  static final TextStyle authSubheading = TextStyle(
    color: _theme.primaryColorDark,
  );

  static final TextStyle registerNow = TextStyle(
    color: _theme.colorScheme.secondary,
  );
}
