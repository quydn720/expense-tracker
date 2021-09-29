import '../constants.dart';
import '../size_config.dart';
import '../utils/date_formatter.dart';

import '../pages/daily/components/day_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExtendedAppBarPage extends StatelessWidget {
  const ExtendedAppBarPage({
    Key? key,
    required this.body,
    required this.title,
    required this.icon,
  });

  final Widget body;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    DateFormatter.init();
    return Scaffold(
      body: body,
      appBar: AppBar(
        toolbarHeight: SizeConfig.screenHeight * 0.25,
        shape: const RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(kRadius),
          ),
        ),
        flexibleSpace: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: kHeaderPadding),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
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
      ),
    );
  }
}
