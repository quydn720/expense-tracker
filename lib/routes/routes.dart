import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/tab/tab_bloc.dart';
import '../../presentations/pages/main/main_page.dart';
import '../../presentations/pages/onboarding/onboarding_page.dart';
import '../blocs/app_bloc/app_bloc.dart';
import '../presentations/pages/forgot_password/forgot_pw_page.dart';
import '../presentations/pages/home/home_page.dart';
import '../presentations/pages/login/login_page.dart';
import '../presentations/pages/profile/account/account_page.dart';
import '../presentations/pages/profile/export/export_page.dart';
import '../presentations/pages/profile/export/export_result_page.dart';
import '../presentations/pages/profile/setting/setting_page.dart';
import '../presentations/pages/transaction/fetch_transaction/transaction_list.dart';
import '../size_config.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) {
    SizeConfig().init(context);
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
        return const OnboardingPage();
      },
    );
  },
  // SplashPage.routeName: (context) => const SplashPage(),
  MainPage.routeName: (context) => const MainPage(),
  HomePage.routeName: (context) => const HomePage(),
  ForgotPasswordPage.routeName: (context) => const ForgotPasswordPage(),
  TransactionPage.routeName: (context) => const TransactionPage(),
  AccountPage.routeName: (context) => const AccountPage(),
  SettingPage.routeName: (context) => const SettingPage(),
  ExportPage.routeName: (context) => const ExportPage(),
  ExportDataPromptPage.routeName: (context) => const ExportDataPromptPage(),
  // TransactionDetailPage.routeName: (context) =>  TransactionDetailPage(),
};
