import 'package:flutter/material.dart';

class RestomateTextStyle {
  RestomateTextStyle._();

  static TextStyle getTextStyle(double fontSize, FontWeight fontWeight,
      {Color color = Colors.black}) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontWeight: fontWeight,
      color: color,
    );
  }
}

class FontWeights {
  /// Thin, the least thick
  static const FontWeight leastThick = FontWeight.w100;

  /// Extra-light
  static const FontWeight extraLight = FontWeight.w200;

  /// Light
  static const FontWeight light = FontWeight.w300;

  /// Normal / regular / plain
  static const FontWeight normal = FontWeight.w400;

  /// Medium
  static const FontWeight medium = FontWeight.w500;

  /// Semi-bold
  static const FontWeight semiBold = FontWeight.w600;

  /// Bold
  static const FontWeight bold = FontWeight.w700;

  /// Extra-bold
  static const FontWeight extraBold = FontWeight.w800;

  /// Black, the most thick
  static const FontWeight mostThink = FontWeight.w900;
}
