import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_theme.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';

class AppTextStyles {
  static final ThemeData _theme = AppTheme.theme;

  static final TextStyle addNewTodoHeading = TextStyle(
    fontSize: SizeUtil.fontSize(20),
  );
  
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

  static final TextStyle avatarPlaceholder = TextStyle(
    fontWeight: FontWeight.bold,
    color: _theme.colorScheme.onSecondary,
  );

  static const TextStyle appBarHeading = TextStyle(
    fontWeight: FontWeight.w800,
  );

  static final TextStyle homeNameHeader = TextStyle(
    fontSize: SizeUtil.fontSize(30),
    fontWeight: FontWeight.w900,
  );

  static final TextStyle homeHeaderGreeting = TextStyle(
    color: _theme.primaryColorDark,
  );


  AppTextStyles._();
}
