import 'package:expense_tracker/pages/onboarding_page/onboarding_page.dart';

import 'pages/daily/daily_page.dart';
import 'pages/login_pages/login_page.dart';

import 'pages/home_pages/home_pages.dart';

import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingPage.routeName: (context) => OnboardingPage(),
  HomePage.routeName: (context) => HomePage(),
  DailyPage.routeName: (context) => DailyPage(),
  LoginPage.routeName: (context) => LoginPage(),
};
