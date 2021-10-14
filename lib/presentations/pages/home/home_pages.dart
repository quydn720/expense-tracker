import '../../../constants.dart';
import '../../../size_config.dart';
import '../add_transaction/add_transaction.dart';

import 'components/custom_bottom_nav_item.dart';

import '../budget/budget_page.dart';
import '../daily/daily_page.dart';
import '../profile/profile_page.dart';
import '../stats/stats_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List _widgetOptions = <Widget>[
    DailyPage(),
    StatsPage(),
    BudgetPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // remove later
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final a = await Navigator.pushNamed(
            context,
            AddNewTransactionPage.routeName,
          );
          print(a);
        },
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // This is holy duplicated ...
  BottomAppBar _buildBottomNav() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
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
