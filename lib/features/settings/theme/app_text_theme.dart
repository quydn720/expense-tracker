import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseTrackerTextTheme {
  static TextTheme get textTheme => TextTheme(
        headline1: GoogleFonts.inter(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          letterSpacing: -1.5,
        ),
        headline2: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.5,
        ),
        headline3: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.w600),
        headline4: GoogleFonts.inter(
          fontSize: 36,
          fontWeight: FontWeight.w500,
        ),
        headline5: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600),
        headline6: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        subtitle2: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        bodyText2: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        button: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        caption: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        overline: GoogleFonts.inter(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
        ),
      );
}
