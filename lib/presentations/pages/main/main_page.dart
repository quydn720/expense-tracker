import 'package:expense_tracker/blocs/tab/tab_bloc.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/presentations/pages/transaction/add_transaction/add_transaction.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants.dart';
import '../profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/utils/extension_helper.dart';

class MainPage extends StatelessWidget {
  static String routeName = '/main_page';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, currentTab) {
        return Scaffold(
          body: getCurrentWidget(currentTab),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            tooltip: 'Add new transaction',
            child: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushNamed(AddNewTransactionPage.routeName);
            },
          ),
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
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              leadingWidth: 150,
              leading: Chip(label: Text('November')),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/sort.png'),
                )
              ],
            ),
            ...context
                .read<TransactionBloc>()
                .transactionRepository
                .mapDateTransaction
                .entries
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kMediumPadding,
                      vertical: kDefaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(e.key.onlyDateFormatted, style: title3),
                        ),
                        ...e.value
                            .map((e) => TransactionTile(transaction: e))
                            .toList(),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
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
    return BottomAppBar(
      notchMargin: 10.0,
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle(),
      child: BottomNavigationBar(
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
      ),
    );
  }
}
