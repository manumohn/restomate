import 'package:flutter/material.dart';

class RestomateTheme {
  RestomateTheme._();

  static const MaterialColor purplePalette =
      MaterialColor(_purplePalettePrimaryValue, <int, Color>{
    50: Color(0xFFE8E1EF),
    100: Color(0xFFC5B4D6),
    200: Color(0xFF9E82BB),
    300: Color(0xFF774FA0),
    400: Color(0xFF592A8B),
    500: Color(_purplePalettePrimaryValue),
    600: Color(0xFF36036F),
    700: Color(0xFF2E0364),
    800: Color(0xFF27025A),
    900: Color(0xFF1A0147),
  });

  static const int _purplePalettePrimaryValue = 0xFF3C0477;

  static const MaterialColor purplePaletteAccent =
      MaterialColor(_purplePaletteAccentValue, <int, Color>{
    100: Color(0xFF9D7BFF),
    200: Color(_purplePaletteAccentValue),
    400: Color(0xFF5115FF),
    700: Color(0xFF4000FB),
  });

  static const int _purplePaletteAccentValue = 0xFF7748FF;
}
