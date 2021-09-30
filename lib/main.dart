import 'pages/splash/splash_page.dart';

import 'pages/onboarding/onboarding_page.dart';

import 'utils/date_formatter.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'routes.dart';

void main() {
  DateFormatter.init();
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
        textTheme: textTheme,
        appBarTheme: appBarTheme,
      ),
      initialRoute: SplashPage.routeName,
      routes: routes,
    );
  }
}

final appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  titleTextStyle: textTheme.headline1,
);

const textTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
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
