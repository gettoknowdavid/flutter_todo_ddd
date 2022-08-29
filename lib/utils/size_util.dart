import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeUtil {
  SizeUtil._();

  /// Border Radius
  static borderRadius(double value) => BorderRadius.circular(value).r;

  /// Font size
  static fontSize(num value) => value.sp;

  /// R value
  /// Can be used for fontSizes and setting radius values
  static r(num value) => value.r;

  /// Vertical Spacing
  static vS(num height) => ScreenUtil().setVerticalSpacing(height);

  /// Horizontal Spacing
  static hS(num width) => ScreenUtil().setHorizontalSpacing(width);

  /// Height
  static h(num height) => ScreenUtil().setHeight(height);

  /// Width
  static w(num width) => ScreenUtil().setWidth(width);

  /// Screen height
  static sh(num value) => ScreenUtil().screenHeight * value;

  /// Screen width
  static sw(num value) => ScreenUtil().screenWidth * value;

  /// Padding all
  static pAll(double value) => EdgeInsets.all(value).r;

  /// Padding fromLTRB (left, top, right, back)
  static pFromLTRB(double left, double top, double right, double bottom) =>
      EdgeInsets.fromLTRB(left, top, right, bottom).r;

  /// Padding symmetric
  static pSymmetric({double h = 0.0, double v = 0.0}) =>
      EdgeInsets.symmetric(horizontal: h, vertical: v).r;

  /// Padding only
  static pOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      EdgeInsets.only(left: left, top: top, right: right, bottom: bottom).r;
}
