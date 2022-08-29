import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/app_screen_util.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final _fontFamily = GoogleFonts.poppins().fontFamily;

  static final _colorScheme = const ColorScheme.light().copyWith(
    primary: AppColors.white,
    onPrimary: AppColors.black,
    secondary: AppColors.orange,
    onSecondary: AppColors.white,
    background: AppColors.white,
    onBackground: AppColors.black,
    surface: AppColors.white,
    onSurface: AppColors.black,
    error: AppColors.red,
    brightness: Brightness.light,
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: AppColors.black,
      padding: AppScreenUtil.pAll(20),
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: AppScreenUtil.borderRadius(16),
      ),
      textStyle: GoogleFonts.poppins(
        color: AppColors.white,
        fontSize: AppScreenUtil.fontSize(16),
      ),
    ),
  );

  static final _radioTheme = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.lavender;
      }
      return AppColors.orange;
    }),
  );

  static get theme {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
        iconTheme: base.iconTheme,
      ),
      backgroundColor: AppColors.white,
      brightness: Brightness.light,
      canvasColor: AppColors.grey,
      colorScheme: _colorScheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      primaryColor: AppColors.white,
      radioTheme: _radioTheme,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: base.textTheme.copyWith().apply(fontFamily: _fontFamily),
    );
  }
}
