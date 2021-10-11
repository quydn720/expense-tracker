import 'package:expense_tracker/pages/add_transaction/add_transaction.dart';

import 'pages/home/home_pages.dart';
import 'pages/login/login_page.dart';
import 'pages/onboarding/onboarding_page.dart';

import 'pages/splash/splash_page.dart';

import 'pages/daily/daily_page.dart';

import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  OnboardingPage.routeName: (context) => OnboardingPage(),
  HomePage.routeName: (context) => HomePage(),
  DailyPage.routeName: (context) => DailyPage(),
  LoginPage.routeName: (context) => LoginPage(),
  AddNewTransactionPage.routeName: (context) => AddNewTransactionPage(),
};
