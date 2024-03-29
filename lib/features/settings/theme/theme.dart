import 'package:expense_tracker/features/settings/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

final borderRadius = BorderRadius.circular(16);
const primaryColor = Color(0xff7F3DFF);

class ExpenseTrackerTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      primaryColor: primaryColor,
      textTheme: ExpenseTrackerTextTheme.textTheme,
      chipTheme: const ChipThemeData(
        backgroundColor: Color(0xffEEE5FF),
        labelPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashFactory: NoSplash.splashFactory,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff212325)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF1F1FA)),
          borderRadius: borderRadius,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      cardTheme: const CardTheme(elevation: 0, color: Color(0xffFCFCFC)),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(elevation: 0),
      textTheme: ExpenseTrackerTextTheme.textTheme,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primaryColorDark: primaryColor,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
    );
  }
}
