import 'package:expense_tracker/features/authentication/presentation/pages/register_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/features/verify_email/register_verify_email.dart';
import 'package:expense_tracker/home_screen.dart';
import 'package:expense_tracker/transaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bloc/app_bloc.dart';
import '../features/settings/presentation/pages/language_screen.dart';
import '../features/settings/presentation/pages/notification_screen.dart';
import '../features/settings/presentation/pages/security_screen.dart';
import '../features/settings/presentation/pages/theme_screen.dart';
import 'app_scaffold.dart';
import 'fade_transistion_page.dart';

const ValueKey<String> _scaffoldKey = ValueKey<String>('App scaffold');

GoRouter router({String? initialLocation, required AppBloc appBloc}) =>
    GoRouter(
      initialLocation: initialLocation,
      routes: <GoRoute>[
        GoRoute(path: '/', redirect: (_) => '/home'),
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const AppScaffold(
              selectedTab: ScaffoldTab.home,
              child: HomeScreen(),
            ),
            key: _scaffoldKey,
          ),
        ),
        GoRoute(
          path: '/transaction',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const AppScaffold(
              selectedTab: ScaffoldTab.transaction,
              child: TransactionsScreen(),
            ),
            key: _scaffoldKey,
          ),
        ),
        GoRoute(
          path: '/budget',
          pageBuilder: (context, state) => FadeTransitionPage(
            child: const AppScaffold(
              selectedTab: ScaffoldTab.budget,
              child: BudgetScreen(),
            ),
            key: _scaffoldKey,
          ),
        ),
        GoRoute(
          path: '/profile',
          redirect: (state) => '/setting',
        ),
        GoRoute(
          path: '/setting',
          pageBuilder: (context, state) => FadeTransitionPage(
            key: _scaffoldKey,
            child: const AppScaffold(
              selectedTab: ScaffoldTab.profile,
              child: SettingScreen(),
            ),
          ),
          routes: [
            GoRoute(
              path: 'currency',
              builder: (context, state) => const CurrencyScreen(),
            ),
            GoRoute(
              path: 'language',
              builder: (context, state) => const LanguageScreen(),
            ),
            GoRoute(
              path: 'theme',
              builder: (context, state) => const ThemeScreen(),
            ),
            GoRoute(
              path: 'security',
              builder: (context, state) => const SecurityScreen(),
            ),
            GoRoute(
              path: 'notification',
              builder: (context, state) => const NotificationScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/register',
          builder: (_, __) => const RegisterProvider(),
        ),
        GoRoute(
          path: '/login',
          builder: (_, __) => const RegisterProvider(),
        ),
        GoRoute(
          path: '/dev_view',
          builder: (_, __) => const AppDevelopmentView(),
        ),
      ],
      debugLogDiagnostics: true,
      // refreshListenable: GoRouterRefreshStream(appBloc.stream),
      // redirect: (state) {
      //   final loggedIn = appBloc.state is Authenticated;
      //   final loggingIn = state.subloc == '/login';
      //   final registering = state.subloc == '/register';

      //   if (!loggedIn) {
      //     if (registering) {
      //       return null;
      //     } else if (loggingIn) {
      //       return null;
      //     } else {
      //       return '/login';
      //     }
      //   }

      //   if (loggingIn || registering) {
      //     return '/';
      //   }

      //   return null;
      // },
    );

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Budget'));
  }
}

class AppDevelopmentView extends StatelessWidget {
  const AppDevelopmentView({super.key});
  @override
  Widget build(BuildContext context) {
    return const VerificationEmailView();
  }
}
