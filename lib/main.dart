import 'package:expense_tracker/pages/daily/daily_page.dart';
import 'package:expense_tracker/pages/home_pages/home_pages.dart';
import 'package:expense_tracker/pages/login_pages/login_page.dart';

import 'constants.dart';
import 'pages/splash_page/splash_page.dart';
import 'routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteBackgroundColor,
        primaryColor: kPrimaryColor,
        appBarTheme: appBarTheme,
        textTheme: textTheme,
      ),
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}

const appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  toolbarHeight: 140.0,
  shape: const RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(kRadius),
    ),
  ),
);

const textTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  ),
  bodyText2: TextStyle(
    fontFamily: 'GTWalsheimPro',
  ),
  subtitle2: TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  ),
  subtitle1: TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontSize: 18.0,
  ),
);
