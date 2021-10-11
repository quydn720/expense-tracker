import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'pages/splash/splash_page.dart';
import 'routes.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.pink, // status bar color
      systemNavigationBarColor: Colors.lightBlue,
    ));
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
