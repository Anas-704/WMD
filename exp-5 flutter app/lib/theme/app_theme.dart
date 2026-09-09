import 'package:flutter/material.dart';

class AppTheme {
  static const background = Color(0xFF080808);
  static const surface = Color(0xFF111111);
  static const primaryText = Color(0xFFF5F5F5);
  static const secondaryText = Color(0xFF9A9A9A);
  static const border = Color(0xFF242424);
  static const accent = Color(0xFFFFFFFF);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.dark(
      surface: surface,
      primary: accent,
    ),
    fontFamily: 'Arial',
  );
}