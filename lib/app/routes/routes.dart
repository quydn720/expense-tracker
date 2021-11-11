import 'package:expense_tracker/app/app.dart';
import 'package:expense_tracker/presentations/pages/authentication/forgot_password/forgot_pw_page.dart';
import 'package:expense_tracker/presentations/pages/home/components/transaction_card.dart';
import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/presentations/pages/profile/account/account_page.dart';
import 'package:expense_tracker/presentations/pages/profile/export/export_page.dart';
import 'package:expense_tracker/presentations/pages/profile/export/export_result_page.dart';
import 'package:expense_tracker/presentations/pages/profile/setting/setting_page.dart';
import 'package:expense_tracker/presentations/pages/transaction/add_transaction/add_transaction.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/transaction_list.dart';
import 'package:expense_tracker/signin/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/tab/tab_bloc.dart';
import '../../presentations/pages/main/main_page.dart';
import '../../presentations/pages/onboarding/onboarding_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<TabBloc>(
                create: (context) => TabBloc(),
              ),
            ],
            child: const MainPage(),
          );
        }
        if (state is Unauthenticated) {
          return const SignInPage();
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  },
  // SplashPage.routeName: (context) => const SplashPage(),
  OnboardingPage.routeName: (context) => const OnboardingPage(),
  MainPage.routeName: (context) => const MainPage(),
  HomePage.routeName: (context) => const HomePage(),
  AddNewTransactionPage.routeName: (context) => const AddNewTransactionPage(),
  ForgotPasswordPage.routeName: (context) => const ForgotPasswordPage(),
  TransactionPage.routeName: (context) => const TransactionPage(),
  AccountPage.routeName: (context) => const AccountPage(),
  SettingPage.routeName: (context) => const SettingPage(),
  ExportPage.routeName: (context) => const ExportPage(),
  ExportDataPromptPage.routeName: (context) => const ExportDataPromptPage(),
  TransactionDetailPage.routeName: (context) => const TransactionDetailPage(),
};
