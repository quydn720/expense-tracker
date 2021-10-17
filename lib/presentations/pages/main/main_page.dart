import 'package:expense_tracker/presentations/pages/home/home_page.dart';
import 'package:expense_tracker/presentations/pages/transaction/add_transaction/add_transaction.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/transaction_list.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

import 'components/custom_bottom_nav_item.dart';

import '../budget/budget_page.dart';
import '../profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  static String routeName = '/HomePage';
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List _widgetOptions = <Widget>[
    HomePage(),
    TransactionPage(),
    SizedBox.shrink(),
    BudgetPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // remove later
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
      onPressed: () async {
        final a = await Navigator.pushNamed(
          context,
          AddNewTransactionPage.routeName,
        );
        print(a);
      },
      child: const Icon(Icons.add, size: 30),
      backgroundColor: kPrimaryColor,
    );
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomAppBar,
    );
  }

  // This is holy duplicated ...
  BottomAppBar _buildBottomNav() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Container(
        height: SizeConfig.screenHeight * 0.075,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBottomNavItem(
              icon: FontAwesomeIcons.calendarAlt,
              title: Text(
                'Daily',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: _selectedIndex == 0 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                _selectedIndex = 0;
              }),
              color: _selectedIndex == 0 ? kPrimaryColor : Colors.grey,
            ),
            CustomBottomNavItem(
              icon: FontAwesomeIcons.chartBar,
              title: Text(
                'Stats',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: _selectedIndex == 1 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                _selectedIndex = 1;
              }),
              color: _selectedIndex == 1 ? kPrimaryColor : Colors.grey,
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.1),
            CustomBottomNavItem(
              icon: FontAwesomeIcons.wallet,
              title: Text(
                'Budget',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: _selectedIndex == 2 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                _selectedIndex = 2;
              }),
              color: _selectedIndex == 2 ? kPrimaryColor : Colors.grey,
            ),
            CustomBottomNavItem(
              icon: FontAwesomeIcons.user,
              title: Text(
                'User',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: _selectedIndex == 3 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                _selectedIndex = 3;
              }),
              color: _selectedIndex == 3 ? kPrimaryColor : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
