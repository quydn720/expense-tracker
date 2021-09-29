import '../../constants.dart';
import '../budget/budget_page.dart';
import '../daily/daily_page.dart';
import 'components/bottom_nav_item_icon.dart';
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
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(currentIndex),
        bottomNavigationBar: buildBottomNav(),
      ),
    );
  }

  BottomNavigationBar buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => setState(() {
        currentIndex = value;
      }),
      iconSize: 16.0,
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: BottomNavItemIcon(icon: FontAwesomeIcons.calendarAlt),
          label: 'Daily',
        ),
        BottomNavigationBarItem(
          icon: BottomNavItemIcon(icon: FontAwesomeIcons.chartBar),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: BottomNavItemIcon(icon: FontAwesomeIcons.wallet),
          label: 'Budget',
        ),
        BottomNavigationBarItem(
          icon: BottomNavItemIcon(icon: FontAwesomeIcons.user),
          label: 'User',
        ),
      ],
    );
  }
}
