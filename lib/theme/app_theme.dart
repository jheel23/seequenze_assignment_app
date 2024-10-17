import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static AppTheme instance = AppTheme._();
  ThemeData apptheme = ThemeData(
    fontFamily: 'Raleway',
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff4D2B1A))
        .copyWith(
            brightness: Brightness.dark,
            primary: const Color(0xff4D2B1A),
            secondary: Colors.green),
    useMaterial3: true,
  );
}
