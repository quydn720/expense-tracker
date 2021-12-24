import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/presentations/pages/profile/account/account_page.dart';

import '../../../blocs/tab/tab_bloc.dart';
import '../../components/default_button.dart';
import '../home/home_page.dart';
import '../transaction/add_transaction/add_transaction.dart';
import '../transaction/fetch_transaction/transaction_list.dart';
import '../../../size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants.dart';
import '../profile/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  static String routeName = '/main_page';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        if (state is WalletLoaded) {
          if (state.wallets.isEmpty) {
            return const AddNewWalletPage();
          }
        }
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => BlocProvider.value(
                        value: BlocProvider.of<WalletBloc>(context),
                        child: const AddNewTransactionPage(),
                      ),
                    ),
                  );
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
      },
    );
  }

  Widget getCurrentWidget(AppTab tab) {
    if (tab == AppTab.budget) {
      return const BudgetPage();
    } else if (tab == AppTab.transaction) {
      return const TransactionPage();
    } else if (tab == AppTab.user) {
      return const ProfilePage();
    } else {
      return const HomePage();
    }
  }
}

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kViolet100,
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/arrow-left-2.png',
                      color: Colors.white,
                    ),
                    Text(
                      'December',
                      style: title3.copyWith(color: Colors.white),
                    ),
                    Image.asset(
                      'assets/icons/arrow-right-2.png',
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text('Let\'s make one so you in control'),
                    const Text('You don\'t have a budget.'),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kMediumPadding),
                      child: DefaultButton(
                        key: const Key('budgetPage_addNewBudget_button'),
                        onPressed: () {},
                        title: '+  Create a budget',
                      ),
                    ),
                    const SizedBox(height: 20),
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
