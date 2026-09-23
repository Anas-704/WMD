import 'package:flutter/material.dart';

class AppTheme {
  static const background = Color(0xFFF5F5F2);
  static const surface = Color(0xFFFFFFFF);

  static const primaryText = Color(0xFF111111);
  static const secondaryText = Color(0xFF666666);

  static const border = Color(0xFFDDDDD8);

  static const accent = Color(0xFF2563EB);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: background,

    colorScheme: const ColorScheme.light(
      surface: surface,
      primary: accent,
    ),

    fontFamily: 'Arial',

    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      foregroundColor: primaryText,
      elevation: 0,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryText,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryText,
        side: const BorderSide(
          color: border,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
      ),
    ),
  );
}