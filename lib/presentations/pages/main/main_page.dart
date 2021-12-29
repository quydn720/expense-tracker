import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/pages/budget/budget_page.dart';
import 'package:expense_tracker/presentations/pages/profile/account/add_new_account.dart';

import '../../../blocs/tab/tab_bloc.dart';
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
            return const NewUserPage();
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
                      builder: (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: BlocProvider.of<WalletBloc>(context),
                          ),
                          BlocProvider.value(
                            value: BlocProvider.of<TransactionBloc>(context),
                          ),
                        ],
                        // child: const AddNewTransactionPage(),
                        child: const AddTransactionPage(),
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

class NewUserPage extends StatelessWidget {
  const NewUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Text("Let’s setup your account!", style: title1),
              const SizedBox(height: 20),
              const Text(
                "Account can be your bank, credit card or your wallet.",
                style: body3,
              ),
              const Spacer(),
              DefaultButton(
                  title: "Let's go",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider.value(
                            value: context.read<WalletBloc>(),
                            child: const AddNewWalletPage()),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
