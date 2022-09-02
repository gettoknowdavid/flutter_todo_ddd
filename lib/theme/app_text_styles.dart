import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_theme.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppTextStyles {
  AppTextStyles._();

  static final ThemeData _theme = AppTheme.theme;

  static final TextStyle authHeading = TextStyle(
    fontSize: SizeUtil.fontSize(24),
    fontWeight: FontWeight.w900,
  );

  static final TextStyle authSubheading = TextStyle(
    color: _theme.primaryColorDark,
  );

  static final TextStyle registerNow = TextStyle(
    color: _theme.colorScheme.secondary,
  );
}
