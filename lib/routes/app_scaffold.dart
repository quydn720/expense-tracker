import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart';
import 'package:expense_tracker/features/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

enum ScaffoldTab { home, transactions, budget, profile }

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<WalletCubit>()),
        BlocProvider(create: (_) => getIt<UserBloc>()),
      ],
      child: Scaffold(
        backgroundColor: color,
        body: SafeArea(child: child),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            context.push('/transaction');
          },
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _calculateSelectedIndex(context),
          onDestinationSelected: (index) {
            context.go('/${ScaffoldTab.values[index].name}');
          },
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home),
              label: context.l10n.home,
            ),
            NavigationDestination(
              icon: const Icon(Icons.speed),
              label: context.l10n.transactions,
            ),
            NavigationDestination(
              icon: const Icon(Icons.publish_rounded),
              label: context.l10n.budget,
            ),
            NavigationDestination(
              icon: const Icon(Icons.people),
              label: context.l10n.profile,
            ),
          ],
        ),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).location;
    if (location == '/home') {
      return 0;
    }
    if (location == '/transactions') {
      return 1;
    }
    if (location == '/budget') {
      return 2;
    }
    if (location == '/profile') {
      return 3;
    }
    return 0;
  }
}
