import 'package:expense_tracker/pages/home_pages/components/custom_bottom_nav_item.dart';

import '../../constants.dart';
import '../budget/budget_page.dart';
import '../daily/daily_page.dart';
import '../profile/profile_page.dart';
import '../stats/stats_page.dart';
import '../../size_config.dart';
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
  int currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    DailyPage(),
    StatsPage(),
    BudgetPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _widgetOptions.elementAt(currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  BottomAppBar _buildBottomNav() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Container(
        height: SizeConfig.screenHeight * 0.075,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomBottomNavItem(
              icon: FontAwesomeIcons.calendarAlt,
              title: Text(
                'Daily',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: currentIndex == 0 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                currentIndex = 0;
              }),
              color: currentIndex == 0 ? kPrimaryColor : Colors.grey,
            ),
            CustomBottomNavItem(
              icon: FontAwesomeIcons.chartBar,
              title: Text(
                'Stats',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: currentIndex == 1 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                currentIndex = 1;
              }),
              color: currentIndex == 1 ? kPrimaryColor : Colors.grey,
            ),
            SizedBox(width: SizeConfig.screenWidth * 0.1),
            CustomBottomNavItem(
              icon: FontAwesomeIcons.wallet,
              title: Text(
                'Budget',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: currentIndex == 2 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                currentIndex = 2;
              }),
              color: currentIndex == 2 ? kPrimaryColor : Colors.grey,
            ),
            CustomBottomNavItem(
              icon: FontAwesomeIcons.user,
              title: Text(
                'User',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: currentIndex == 3 ? Colors.black : Colors.grey),
              ),
              onTap: () => setState(() {
                currentIndex = 3;
              }),
              color: currentIndex == 3 ? kPrimaryColor : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
