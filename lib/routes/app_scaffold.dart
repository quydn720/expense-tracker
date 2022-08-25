import 'package:expense_tracker/features/settings/presentation/pages/theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../theme_controller.dart';

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
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: selectedTab.index == 0
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/transaction.svg',
              color: selectedTab.index == 1
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/pie-chart.svg',
              color: selectedTab.index == 2
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: selectedTab.index == 3
                  ? const Color(0xff7F3DFF)
                  : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
