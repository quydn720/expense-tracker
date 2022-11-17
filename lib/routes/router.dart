import 'dart:async';

import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_email_sent_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/edit_transaction/presentation/pages/edit_transaction_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/profile_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/features/verify_email/register_verify_email_view.dart';
import 'package:expense_tracker/home_screen.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:expense_tracker/presentations/pages/detail/transaction_detail.dart';
import 'package:expense_tracker/presentations/pages/onboarding/onboarding_page.dart';
import 'package:expense_tracker/presentations/pages/profile/export/export_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../features/app/bloc/app_bloc.dart';
import '../features/authentication/presentation/register_form/pages/register_screen.dart';
import '../features/settings/presentation/pages/language_screen.dart';
import '../features/settings/presentation/pages/notification_screen.dart';
import '../features/settings/presentation/pages/security_screen.dart';
import '../features/settings/presentation/pages/theme_screen.dart';
import '../features/transaction_overview/presentation/pages/transaction_screen.dart';
import 'app_scaffold.dart';
import 'fade_transistion_page.dart';

const ValueKey<String> _scaffoldKey = ValueKey<String>('App scaffold');

GoRouter router({String? initialLocation, required AppBloc appBloc}) {
  return GoRouter(
    initialLocation: initialLocation,
    routes: [
      GoRoute(path: '/', redirect: (_, __) => '/home'),
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
        path: '/transactions',
        pageBuilder: (_, __) => FadeTransitionPage(
          child: const AppScaffold(
            selectedTab: ScaffoldTab.transactions,
            child: TransactionsScreen(),
          ),
          key: _scaffoldKey,
        ),
        routes: [
          GoRoute(
            path: ':transactionId',
            builder: (_, state) {
              // final id = state.params['transactionId']!;
              return TransactionDetailPage(
                transaction: state.extra as Transaction,
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/reports',
        builder: (_, __) => const TransactionReports(),
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
        pageBuilder: (_, __) => FadeTransitionPage(
          child: const AppScaffold(
            color: Color(0xffF6F6F6),
            selectedTab: ScaffoldTab.profile,
            child: ProfileScreen(),
          ),
          key: _scaffoldKey,
        ),
        routes: [
          GoRoute(
            path: 'account',
            builder: (_, __) => const CurrencyScreen(),
          ),
          GoRoute(
            path: 'export-data',
            builder: (_, __) => const ExportScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/setting',
        builder: (_, __) => const SettingScreen(),
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
        path: '/dev_view',
        builder: (_, __) => const AppDevelopmentView(),
      ),
      GoRoute(
        path: '/transaction',
        builder: (_, state) => EditTransactionScreen(
          inititalTransaction: state.extra as Transaction?,
        ),
      ),
      GoRoute(
        path: '/success',
        builder: (_, state) => ForgotPasswordEmailSentScreen(
          email: (state.extra as String?)!,
        ),
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (_, __) => FadeTransitionPage(
          key: const ValueKey('new key'),
          child: const LoginProvider(),
        ),
        routes: [
          GoRoute(
            path: 'forgot-password',
            builder: (_, state) => ForgotPasswordScreen(
              email: state.extra as String?,
            ),
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
    ],
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshStream(appBloc.stream),
    redirect: (context, state) {
      final appBloc = context.read<AppBloc>();
      final showOnboardingScreen = appBloc.state is FirstTimeOpenApp;
      if (showOnboardingScreen) {
        if (state.subloc == '/splash') return null;
        return '/splash';
      }

      final loggedIn = appBloc.state is Authenticated;

      final loggingIn = state.subloc == '/login';
      final registering = state.subloc == '/register';

      final emailVerified = appBloc.state is WaitForEmailVerification;
      final verifying = state.subloc == '/verify';

      if (emailVerified) {
        return null;
      }
      if (!loggedIn) {
        if (registering) {
          return null;
        } else if (loggingIn) {
          return null;
        } else if (state.subloc == '/login/forgot-password') {
          return null;
        } else if (state.subloc == '/success') {
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
}

class TransactionReports extends StatelessWidget {
  const TransactionReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          if (index == 3) return const Center(child: Text('go to full detail'));
          if (index == 2) return const Center(child: Text('quote'));
          return Center(child: Text(index.toString()));
        },
      ),
    );
  }
}

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
          onPress: () {
            context.read<AppBloc>().add(const LogoutRequested());
          },
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
