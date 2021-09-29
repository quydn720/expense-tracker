import '../../../size_config.dart';
import '../../../utils/date_formatter.dart';

import '../../../constants.dart';
import 'package:flutter/material.dart';

class DayIndicator extends StatelessWidget {
  const DayIndicator({
    required this.dayOfWeek,
    required this.day,
  });
  final String dayOfWeek;
  final int day;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          dayOfWeek,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.grey),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        CircleAvatar(
          child: Text('$day',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: day == DateFormatter.today.day
                        ? Colors.white
                        : Colors.black,
                  )),
          backgroundColor:
              day == DateFormatter.today.day ? kPrimaryColor : kGreyishColor,
        ),
      ],
    );
  }
}
