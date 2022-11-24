import 'package:flutter/material.dart';

import 'app_text_theme.dart';

final darkThemeData = ThemeData.dark().copyWith(
  textTheme: textTheme,
  appBarTheme: const AppBarTheme(elevation: 0),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textStyle: textTheme.button,
      // textStyle: const TextStyle(letterSpacing: 0),
      splashFactory: NoSplash.splashFactory,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffF1F1FA)),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff7F3DFF),
    surfaceVariant: const Color(0xffF6F6F6),
  ),
  primaryColor: const Color(0xff7F3DFF),
  textTheme: textTheme,
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xffEEE5FF),
    labelPadding: EdgeInsets.symmetric(horizontal: 16),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textStyle: textTheme.button,
      splashFactory: NoSplash.splashFactory,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    color: Colors.white,
    iconTheme: IconThemeData(color: Color(0xff212325)),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffF1F1FA)),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Color(0xff7F3DFF),
  ),
  scaffoldBackgroundColor: Colors.white,
  cardTheme: const CardTheme(elevation: 0, color: Color(0xffFCFCFC)),
);
