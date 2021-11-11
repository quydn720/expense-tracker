import 'package:expense_tracker/app/bloc/app_bloc.dart';
import 'package:expense_tracker/signin/login.dart';
import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/presentations/pages/onboarding/onboarding_page.dart';
import 'package:flutter/widgets.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.firstTimeOpened:
      return [OnboardingPage.page()];
    case AppStatus.unauthenticated:
    default:
      return [SignInPage.page()];
  }
}
