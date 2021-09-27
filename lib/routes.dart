import 'package:expense_tracker/pages/home_pages/home_pages.dart';

import 'pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  HomePage.routeName: (context) => HomePage(),
};
