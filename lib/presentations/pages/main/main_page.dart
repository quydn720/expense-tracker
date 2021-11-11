import 'package:expense_tracker/blocs/tab/tab_bloc.dart';
import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants.dart';
import '../profile/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  static String routeName = '/main_page';
  const MainPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: MainPage());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, currentTab) {
        return Scaffold(
          body: getCurrentWidget(currentTab),
          bottomNavigationBar: TabSelector(
            activeTab: currentTab,
            onTabSelected: (tab) {
              context.read<TabBloc>().add(TabChanged(tab));
            },
          ),
        );
      },
    );
  }

  Widget getCurrentWidget(AppTab tab) {
    if (tab == AppTab.budget) {
      return const AnotherPage();
    } else if (tab == AppTab.transaction) {
      return const AnotherPage();
    } else if (tab == AppTab.user) {
      return const ProfilePage();
    } else {
      return const HomePage();
    }
  }
}

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('this is another page'),
    );
  }
}

class TabSelector extends StatelessWidget {
  final AppTab activeTab;
  final Function(AppTab) onTabSelected;

  const TabSelector({
    Key? key,
    required this.activeTab,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: kDark25,
      selectedItemColor: kViolet100,
      selectedFontSize: 12.5,
      unselectedFontSize: 12.5,
      type: BottomNavigationBarType.fixed,
      currentIndex: AppTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(AppTab.values[index]),
      items: AppTab.values.map((tab) {
        String iconPath;
        String label;
        final color = tab == activeTab ? kViolet100 : kDark25;
        switch (tab) {
          case AppTab.home:
            iconPath = 'assets/icons/home.png';
            label = 'Home';
            break;
          case AppTab.transaction:
            iconPath = 'assets/icons/transaction_bw.png';
            label = 'Transaction';
            break;
          case AppTab.budget:
            iconPath = 'assets/icons/pie-chart.png';
            label = 'Budget';
            break;
          case AppTab.user:
            iconPath = 'assets/icons/user.png';
            label = 'User';
            break;
        }
        return BottomNavigationBarItem(
          icon: Image.asset(iconPath, color: color),
          label: label,
        );
      }).toList(),
    );
  }
}
