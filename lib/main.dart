import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFCFCFC),
        primaryColor: kPrimaryColor,
      ),
      home: SplashPage(),
    );
  }
}
