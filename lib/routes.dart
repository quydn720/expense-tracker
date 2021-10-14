import 'package:flutter/material.dart';

import 'presentations/pages/add_transaction/add_transaction.dart';
import 'presentations/pages/authentication/forgor_password/forgot_pw_page.dart';
import 'presentations/pages/authentication/sign_in/sign_in_page.dart';
import 'presentations/pages/authentication/sign_up/sign_up_page.dart';
import 'presentations/pages/daily/daily_page.dart';
import 'presentations/pages/home/home_pages.dart';
import 'presentations/pages/onboarding/onboarding_page.dart';
import 'presentations/pages/splash/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  OnboardingPage.routeName: (context) => const OnboardingPage(),
  HomePage.routeName: (context) => const HomePage(),
  DailyPage.routeName: (context) => const DailyPage(),
  AddNewTransactionPage.routeName: (context) => const AddNewTransactionPage(),
  SignInPage.routeName: (context) => const SignInPage(),
  SignUpPage.routeName: (context) => const SignUpPage(),
  ForgotPasswordPage.routeName: (context) => const ForgotPasswordPage(),
};
