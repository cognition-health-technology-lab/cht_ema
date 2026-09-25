// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

class ChtLabTheme {
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light(
        primary: Color.fromRGBO(2, 71, 72, 1),
        secondary: Color.fromRGBO(219, 221, 220, 1),
        tertiary: Color.fromRGBO(247, 149, 29, 1),
        surface: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Color.fromRGBO(2, 71, 72, 1),
        onTertiary: Colors.white,
        onSurface: Color.fromRGBO(2, 71, 72, 1),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(2, 71, 72, 1),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromRGBO(2, 71, 72, 1),
        selectedItemColor: Color.fromRGBO(247, 149, 29, 1),
        unselectedItemColor: Colors.white70,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      textTheme: const TextTheme(
        // HEADLINES → Open Sans Bold
        headlineLarge: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),

        // SUBHEADERS → Noto Serif
        titleLarge: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: 22,
        ),
        titleMedium: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: 20,
        ),
        titleSmall: TextStyle(
          fontFamily: 'NotoSerif',
          fontSize: 18,
        ),

        // BODY → Baskerville BT Roman
        bodyLarge: TextStyle(
          fontFamily: 'BaskervilleBT',
          fontSize: 18,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'BaskervilleBT',
          fontSize: 16,
        ),
        bodySmall: TextStyle(
          fontFamily: 'BaskervilleBT',
          fontSize: 14,
        ),
      ),
    );
  }
}
