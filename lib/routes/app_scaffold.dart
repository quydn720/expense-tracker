import 'package:expense_tracker/features/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:transaction_repository/transaction_repository.dart';

enum ScaffoldTab { home, transaction, budget, profile }

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.selectedTab,
    required this.child,
  });

  final ScaffoldTab selectedTab;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<TransactionBloc>().add(
              AddNewTransaction(Transaction.empty()),
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) => _onItemTapped(value, context),
        currentIndex: selectedTab.index,
        selectedFontSize: 12,
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(
              color: selectedTab.index == 0
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: context.l10n.home,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.transaction.svg(
              color: selectedTab.index == 1
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: context.l10n.transactions,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.pieChart.svg(
              color: selectedTab.index == 2
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: context.l10n.budget,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.user.svg(
              color: selectedTab.index == 3
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: context.l10n.profile,
          ),
        ],
      ),
      // ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (ScaffoldTab.values[index]) {
      case ScaffoldTab.home:
        GoRouter.of(context).go('/${ScaffoldTab.values[index].name}');
        break;
      case ScaffoldTab.transaction:
        GoRouter.of(context).go('/${ScaffoldTab.values[index].name}');
        break;
      case ScaffoldTab.budget:
        GoRouter.of(context).go('/${ScaffoldTab.values[index].name}');
        break;
      case ScaffoldTab.profile:
        GoRouter.of(context).go('/${ScaffoldTab.values[index].name}');
        break;
    }
  }
}
