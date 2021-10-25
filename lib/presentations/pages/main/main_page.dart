import 'package:expense_tracker/app/auth/auth_bloc.dart';
import 'package:expense_tracker/app/misc/wallet_bloc.dart';
import 'package:expense_tracker/app/transaction/transaction_watcher_bloc.dart';
import 'package:expense_tracker/injector.dart';
import 'package:expense_tracker/presentations/pages/authentication/sign_in/sign_in_page.dart';
import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/presentations/pages/transaction/add_transaction/add_transaction.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/transaction_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants.dart';
import '../budget/budget_page.dart';
import '../profile/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static String routeName = '/HomePage';
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const TransactionPage(),
    const SizedBox.shrink(),
    const BudgetPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bottomAppBar = BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: kDark25,
        selectedItemColor: kViolet100,
        selectedFontSize: 12.5,
        unselectedFontSize: 12.5,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              color: (_selectedIndex == 0) ? kViolet100 : kDark25,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/transaction_bw.png',
              color: (_selectedIndex == 1) ? kViolet100 : kDark25,
            ),
            label: "Trans",
          ),
          const BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/pie-chart.png',
              color: (_selectedIndex == 3) ? kViolet100 : kDark25,
            ),
            label: "Budget",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/user.png',
              color: (_selectedIndex == 4) ? kViolet100 : kDark25,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
    var floatingActionButton = FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, AddNewTransactionPage.routeName);
      },
      child: const Icon(Icons.add, size: 30),
      backgroundColor: kPrimaryColor,
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<TransactionWatcherBloc>()..add(const WatchAll()),
        ),
        BlocProvider(
          create: (context) => getIt<WalletBloc>()..add(const GetAllWallet()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                unauthenticated: (_) => Navigator.pushReplacementNamed(
                    context, SignInPage.routeName),
              );
            },
          )
        ],
        child: Scaffold(
          body: _widgetOptions.elementAt(_selectedIndex),
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: bottomAppBar,
        ),
      ),
    );
  }
}
