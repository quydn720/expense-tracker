import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final theme = ThemeData(
  textTheme: GoogleFonts.interTextTheme(),
  primaryColorDark: kPrimaryColor,
  primaryColorLight: kPrimaryColor,
  primaryColor: kPrimaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  colorScheme: const ColorScheme.light(secondary: kPrimaryColor),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffF1F1FA)),
      borderRadius: BorderRadius.circular(kDefaultRadius),
    ),
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    titleTextStyle: title3.copyWith(color: kDark100),
    iconTheme: const IconThemeData(color: Colors.black),
  ),
  scaffoldBackgroundColor: kLight100,
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

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kDefaultRadius),
    ),
  ),
);
