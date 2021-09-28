import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/pages/daily/components/body.dart';
import 'package:expense_tracker/pages/daily/components/day_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyPage extends StatelessWidget {
  static String routeName = '/daily_page';
  const DailyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteBackgroundColor,
        body: Body(),
        appBar: AppBar(
          flexibleSpace: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Daily transactions',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.search,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      7, (index) => DayIndicator(day: 27, dayOfWeek: 'Mon')),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
