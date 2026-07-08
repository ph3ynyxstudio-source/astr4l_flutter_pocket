import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static const Color background = Color(0xFF030611);
  static const Color surface = Color(0xFF0B1020);
  static const Color surfaceSoft = Color(0xFF121A2E);

  static const Color cyan = Color(0xFF54D6FF);
  static const Color purple = Color(0xFFA855F7);
  static const Color pink = Color(0xFFFF4FD8);

  static const Color textPrimary = Color(0xFFF4F7FB);
  static const Color textSecondary = Color(0xFFAAB4C8);

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme.dark(
        primary: cyan,
        secondary: purple,
        tertiary: pink,
        surface: surface,
        onPrimary: Colors.black,
        onSurface: textPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        foregroundColor: textPrimary,
        centerTitle: false,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          color: textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 15,
        ),
      ),
    );
  }
}