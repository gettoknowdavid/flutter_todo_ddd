import 'package:flutter/material.dart';
import 'package:flutter_todo_ddd/theme/app_colors.dart';
import 'package:flutter_todo_ddd/utils/size_util.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _fontFamily = GoogleFonts.poppins().fontFamily;

  static const _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0,
    iconTheme: _iconTheme,
  );

  static const _bottomNavigationBarTheme = BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: AppColors.white,
    selectedItemColor: AppColors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    unselectedItemColor: AppColors.black,
  );

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
      fixedSize: Size(SizeUtil.sw(1), SizeUtil.h(56)),
      onPrimary: AppColors.white,
      primary: AppColors.black,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: SizeUtil.borderRadius(20),
      ),
      textStyle: GoogleFonts.poppins(
        color: AppColors.white,
        fontSize: SizeUtil.fontSize(16),
      ),
    ),
  );

  static const _iconTheme = IconThemeData(color: AppColors.black);

  static final _radioTheme = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.lavender;
      }
      return AppColors.orange;
    }),
  );

  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: AppColors.black,
      padding: SizeUtil.pFromLTRB(16, 4, 16, 4),
      shadowColor: Colors.transparent,
      textStyle: GoogleFonts.poppins(color: AppColors.black),
    ),
  );

  static const _textSelectionTheme = TextSelectionThemeData(
    cursorColor: AppColors.black,
  );

  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      fixedSize: Size(SizeUtil.sw(1), SizeUtil.h(56)),
      primary: AppColors.black,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: SizeUtil.borderRadius(20),
      ),
      textStyle: GoogleFonts.poppins(
        color: AppColors.black,
        fontSize: SizeUtil.fontSize(16),
      ),
    ),
  );

  static get theme {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      appBarTheme: _appBarTheme,
      backgroundColor: AppColors.white,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      brightness: Brightness.light,
      canvasColor: AppColors.grey,
      colorScheme: _colorScheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      iconTheme: _iconTheme,
      primaryColor: AppColors.white,
      primaryColorDark: AppColors.greyDark,
      primaryColorLight: AppColors.grey,
      radioTheme: _radioTheme,
      scaffoldBackgroundColor: AppColors.white,
      textButtonTheme: _textButtonTheme,
      textSelectionTheme: _textSelectionTheme,
      textTheme: base.textTheme.copyWith().apply(fontFamily: _fontFamily),
      outlinedButtonTheme: _outlinedButtonTheme,
    );
  }

  AppTheme._();
}
