import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  fontFamily: 'Inter',
  primaryColor: kPrimaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffF1F1FA)),
      borderRadius: BorderRadius.circular(kDefaultRadius),
    ),
  ),
  scaffoldBackgroundColor: kLight100,
  appBarTheme: appBarTheme,
  bottomSheetTheme: bottomSheetThemeData,
);

const bottomSheetThemeData = BottomSheetThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(kBottomSheetRadius),
      topRight: Radius.circular(kBottomSheetRadius),
    ),
  ),
);

const appBarTheme = AppBarTheme(
  elevation: 0,
  centerTitle: true,
  backgroundColor: kLight100,
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kDefaultRadius),
    ),
  ),
);
