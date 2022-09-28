import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
          switch (ScaffoldTab.values[idx]) {
            case ScaffoldTab.home:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
            case ScaffoldTab.transaction:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
            case ScaffoldTab.budget:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
            case ScaffoldTab.profile:
              context.go('/${ScaffoldTab.values[idx].name}');
              break;
          }
        },
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
    );
  }
}
