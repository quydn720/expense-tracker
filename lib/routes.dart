import 'package:expense_tracker/presentations/pages/authentication/forgot_password/forgot_pw_page.dart';
import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/presentations/pages/profile/profile_page.dart';
import 'package:expense_tracker/presentations/pages/transaction/add_transaction/add_transaction.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/transaction_list.dart';
import 'package:flutter/material.dart';

import 'presentations/pages/authentication/sign_in/sign_in_page.dart';
import 'presentations/pages/authentication/sign_up/sign_up_page.dart';
import 'presentations/pages/main/main_page.dart';
import 'presentations/pages/onboarding/onboarding_page.dart';
import 'presentations/pages/splash/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  OnboardingPage.routeName: (context) => const OnboardingPage(),
  MainPage.routeName: (context) => const MainPage(),
  HomePage.routeName: (context) => const HomePage(),
  AddNewTransactionPage.routeName: (context) => const AddNewTransactionPage(),
  SignInPage.routeName: (context) => const SignInPage(),
  SignUpPage.routeName: (context) => const SignUpPage(),
  ForgotPasswordPage.routeName: (context) => const ForgotPasswordPage(),
  TransactionPage.routeName: (context) => const TransactionPage(),
  AccountPage.routeName: (context) => const AccountPage(),
  SettingPage.routeName: (context) => const SettingPage(),
  ExportPage.routeName: (context) => const ExportPage(),
};
