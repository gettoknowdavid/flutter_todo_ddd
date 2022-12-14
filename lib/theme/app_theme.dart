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

  static final _bottomSheetTheme = BottomSheetThemeData(
    constraints: BoxConstraints(minHeight: SizeUtil.sh(0.7)),
    backgroundColor: AppColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(SizeUtil.r(26)),
      ),
    ),
  );

  static final _checkboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.lavender;
      }
      return AppColors.orange;
    }),
    shape: RoundedRectangleBorder(
      borderRadius: SizeUtil.borderRadius(100),
    ),
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
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.black,
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

  static final _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: SizeUtil.borderRadius(20),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    contentPadding: SizeUtil.pFromLTRB(22, 17.5, 22, 17.5),
    enabledBorder: OutlineInputBorder(
      borderRadius: SizeUtil.borderRadius(20),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    errorMaxLines: 5,
    errorStyle: const TextStyle(color: AppColors.red),
    filled: true,
    fillColor: AppColors.grey,
    focusedBorder: OutlineInputBorder(
      borderRadius: SizeUtil.borderRadius(20),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    labelStyle: TextStyle(
      color: AppColors.greyDark,
      fontSize: SizeUtil.fontSize(14),
      fontWeight: FontWeight.w500,
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

  static final _switchTheme = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColors.black.withOpacity(.48);
        }
        return AppColors.black;
      },
    ),
    trackColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.black.withOpacity(.3);
        }
        return AppColors.black.withOpacity(0.17);
      },
    ),
  );

  static const _timePickerTheme = TimePickerThemeData(
    dayPeriodColor: Colors.black26,
    hourMinuteColor: Colors.black26,
  );

  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.black,
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
      foregroundColor: AppColors.black,
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
      bottomSheetTheme: _bottomSheetTheme,
      brightness: Brightness.light,
      canvasColor: AppColors.grey,
      checkboxTheme: _checkboxTheme,
      colorScheme: _colorScheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      iconTheme: _iconTheme,
      inputDecorationTheme: _inputDecorationTheme,
      primaryColor: AppColors.white,
      primaryColorDark: AppColors.greyDark,
      primaryColorLight: AppColors.grey,
      radioTheme: _radioTheme,
      scaffoldBackgroundColor: AppColors.white,
      switchTheme: _switchTheme,
      timePickerTheme: _timePickerTheme,
      textButtonTheme: _textButtonTheme,
      textSelectionTheme: _textSelectionTheme,
      textTheme: base.textTheme.copyWith().apply(fontFamily: _fontFamily),
      outlinedButtonTheme: _outlinedButtonTheme,
    );
  }

  AppTheme._();
}
