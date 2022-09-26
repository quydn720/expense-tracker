import 'dart:async';

import 'package:expense_tracker/features/authentication/presentation/pages/register_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/features/verify_email/register_verify_email_view.dart';
import 'package:expense_tracker/home_screen.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:expense_tracker/presentations/pages/onboarding/onboarding_page.dart';
import 'package:expense_tracker/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transaction_repository/transaction_repository.dart';

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
        GoRoute(path: '/', redirect: (_, __) => '/home'),
        GoRoute(
          path: '/splash',
          builder: (_, __) => const OnboardingPage(),
        ),
        GoRoute(
          path: '/splash',
          builder: (_, __) => const OnboardingPage(),
        ),
        GoRoute(
          path: '/home',
          pageBuilder: (_, __) => FadeTransitionPage(
            child: const AppScaffold(
              selectedTab: ScaffoldTab.home,
              child: HomeScreen(),
            ),
            key: _scaffoldKey,
          ),
        ),
        GoRoute(
          path: '/transaction',
          pageBuilder: (_, __) => FadeTransitionPage(
            child: const AppScaffold(
              selectedTab: ScaffoldTab.transaction,
              child: TransactionsScreen(),
            ),
            key: _scaffoldKey,
          ),
        ),
        GoRoute(
          path: '/budget',
          pageBuilder: (_, __) => FadeTransitionPage(
            child: const AppScaffold(
              selectedTab: ScaffoldTab.budget,
              child: BudgetScreen(),
            ),
            key: _scaffoldKey,
          ),
        ),
        GoRoute(
          path: '/profile',
          redirect: (_, __) => '/setting',
        ),
        GoRoute(
          path: '/setting',
          pageBuilder: (_, __) => FadeTransitionPage(
            key: _scaffoldKey,
            child: const AppScaffold(
              selectedTab: ScaffoldTab.profile,
              child: SettingScreen(),
            ),
          ),
          routes: [
            GoRoute(
              path: 'currency',
              builder: (_, __) => const CurrencyScreen(),
            ),
            GoRoute(
              path: 'language',
              builder: (_, __) => const LanguageScreen(),
            ),
            GoRoute(
              path: 'theme',
              builder: (_, __) => const ThemeScreen(),
            ),
            GoRoute(
              path: 'security',
              builder: (_, __) => const SecurityScreen(),
            ),
            GoRoute(
              path: 'notification',
              builder: (_, __) => const NotificationScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/register',
          builder: (_, __) => const RegisterProvider(),
        ),
        GoRoute(
          path: '/verify',
          builder: (_, __) => const VerificationEmailView(),
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
      refreshListenable: GoRouterRefreshStream(appBloc.stream),
      redirect: (_, state) {
        final initial = appBloc.state is Initial;
        if (initial) {
          if (state.subloc == '/splash') return null;
          return '/splash';
        }

        final loggedIn = appBloc.state is Authenticated;
        final verified = appBloc.state is WaitForEmailVerification;

        final loggingIn = state.subloc == '/login';
        final registering = state.subloc == '/register';
        final verifying = state.subloc == '/verify';

        if (verified) {
          if (verifying) return null;
          if (!loggedIn) return '/verify';
          return '/';
        }
        if (!loggedIn) {
          if (registering) {
            return null;
          } else if (loggingIn) {
            return null;
          } else {
            return '/login';
          }
        }

        if (loggingIn || registering || verifying) {
          return '/';
        }

        return null;
      },
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TransactionTile(
          transaction: Transaction.empty(),
          onLongPress: () {},
          onPress: () {},
        ),
      ),
    );
  }
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
