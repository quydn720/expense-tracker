import 'dart:async';

import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_email_sent_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/pages/register_screen.dart';
import 'package:expense_tracker/features/budget/budget.dart';
import 'package:expense_tracker/features/budget/presentation/pages/create_new_budget_screen.dart';
import 'package:expense_tracker/features/category/presentation/pages/select_category_view.dart';
import 'package:expense_tracker/features/common/pages/onboarding/onboarding_page.dart';
import 'package:expense_tracker/features/common/pages/profile/export/export_page.dart';
import 'package:expense_tracker/features/home/presentation/home_page.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/notification_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/profile_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/security_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/theme_screen.dart';
import 'package:expense_tracker/features/transaction/detail_transaction/transaction_detail.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/pages/edit_transaction_screen.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/pages/transaction_screen.dart';
import 'package:expense_tracker/features/verify_email/register_verify_email_view.dart';
import 'package:expense_tracker/features/wallet/presentation/pages/wallet_screen.dart';
import 'package:expense_tracker/routes/app_scaffold.dart';
import 'package:expense_tracker/routes/fade_transistion_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const ValueKey<String> _scaffoldKey = ValueKey<String>('App scaffold');

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

GoRouter router({String? initialLocation, required AuthenticationBloc auth}) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: initialLocation,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppScaffold(child: child);
        },
        routes: [
          GoRoute(path: '/', redirect: (_, __) => '/home'),
          GoRoute(
            path: '/budget',
            pageBuilder: (_, __) => FadeTransitionPage(
              child: const BudgetScreenProvider(),
              key: _scaffoldKey,
            ),
          ),
          GoRoute(
            path: '/splash',
            builder: (_, __) => const OnboardingPage(),
          ),
          GoRoute(
            path: '/home',
            pageBuilder: (_, __) => FadeTransitionPage(
              child: const HomePage(),
              key: _scaffoldKey,
            ),
          ),
          GoRoute(
            path: '/transactions',
            pageBuilder: (_, __) => FadeTransitionPage(
              child: const TransactionsScreen(),
              key: _scaffoldKey,
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: ':transactionId',
                builder: (_, state) {
                  return TransactionDetailProvider(
                    transaction: state.extra! as TransactionEntity,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (_, __) => FadeTransitionPage(
              child: const ProfileScreen(),
              key: _scaffoldKey,
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'account',
                builder: (_, __) => const WalletScreenProvider(),
              ),
              GoRoute(
                parentNavigatorKey: _rootNavigatorKey,
                path: 'export-data',
                builder: (_, __) => const ExportDataScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/reports',
        builder: (_, __) => const TransactionReports(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/create-budget',
        builder: (_, __) => const CreateNewBudgetScreenProvider(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/setting',
        builder: (_, __) => const SettingScreen(),
        routes: [
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: 'currency',
            builder: (_, __) => const CurrencyScreen(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: 'language',
            builder: (_, __) => const LanguageScreen(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: 'theme',
            builder: (_, __) => const ThemeScreen(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: 'security',
            builder: (_, __) => const SecurityScreen(),
          ),
          GoRoute(
            parentNavigatorKey: _rootNavigatorKey,
            path: 'notification',
            builder: (_, __) => const NotificationScreen(),
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/transaction',
        builder: (_, state) => EditTransactionScreen(
          inititalTransaction: state.extra as TransactionEntity?,
        ),
      ),
      GoRoute(
        path: '/category',
        builder: (_, state) => const SelectCategoryProvider(),
      ),
      GoRoute(
        path: '/success',
        builder: (_, state) => ForgotPasswordEmailSentScreen(
          email: (state.extra as String?)!,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/login',
        builder: (_, __) => const LoginProvider(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/forgot-password',
        builder: (_, state) => ForgotPasswordScreen(
          email: state.extra as String?,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/register',
        builder: (_, __) => const RegisterProvider(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/verify',
        builder: (_, __) => const VerificationEmailView(),
      ),
    ],
    refreshListenable: GoRouterRefreshStream(auth.stream),
    redirect: (context, state) {
      const loginLoc = '/login';
      const registerLoc = '/register';
      const forgotPasswordLoc = '/forgot-password';

      // [1] Get the Authentication state
      final authState = context.read<AuthenticationBloc>().state;
      final isAuthenticated = authState is Authenticated;

      final onLoginPage = state.subloc == loginLoc;
      final onRegisterPage = state.subloc == registerLoc;
      final onForgotPasswordPage = state.subloc == forgotPasswordLoc;

      // If the user is [Unauthenticated]
      if (isAuthenticated == false) {
        if (onRegisterPage) return null;
        if (onForgotPasswordPage) return null;

        return '/login';
      }

      // If the user is [Authenticated] but still try to go '/login' or '/register' page
      // redirect them to home page
      if (onLoginPage || onRegisterPage) return '/';

      // Don't need to redirect at all
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
