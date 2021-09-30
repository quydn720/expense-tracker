import '../daily/components/day_indicator.dart';
import 'components/custom_bottom_nav_item.dart';
import '../../utils/date_formatter.dart';

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
  List _widgetOptions = [
    DailyPage(),
    StatsPage(),
    BudgetPage(),
    ProfilePage(),
  ];
  List pageTitleData = [
    ['Daily Transaction', FontAwesomeIcons.search],
    ['Statistic', FontAwesomeIcons.search],
    ['Budget', FontAwesomeIcons.search],
    ['Profile', FontAwesomeIcons.cog],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(
        title: pageTitleData[currentIndex][0],
        icon: pageTitleData[currentIndex][1],
      ),
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

  AppBar _buildAppBar({required String title, required IconData icon}) {
    return AppBar(
      toolbarHeight: currentIndex == 3
          ? SizeConfig.screenHeight * 0.125
          : SizeConfig.screenHeight * 0.25,
      shape: const RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(kRadius),
        ),
      ),
      flexibleSpace: currentIndex == 3
          ? Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: kHeaderPadding),
                        child: Text(
                          title,
                          // 'title',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        // icon: FaIcon(icon, size: SizeConfig.defaultSize * 2.0),
                        icon: FaIcon(icon, size: SizeConfig.defaultSize * 2.0),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: kHeaderPadding),
                        child: Text(
                          title,
                          // 'title',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        // icon: FaIcon(icon, size: SizeConfig.defaultSize * 2.0),
                        icon: FaIcon(icon, size: SizeConfig.defaultSize * 2.0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      7,
                      (index) {
                        return DayIndicator(
                          day: DateFormatter.listDateOfWeek[index].day,
                          dayOfWeek: DateFormatter.toWeekday(index),
                        );
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
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
