import 'package:expense_tracker/constants.dart';
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
        SizedBox(height: 4.0),
        CircleAvatar(
          child: Text('$day'),
          backgroundColor: kGreyishColor,
        ),
      ],
    );
  }
}
