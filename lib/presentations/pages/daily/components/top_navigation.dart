import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'money_chip.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const linearGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xFFFFF6E5),
        Color(0xFFF8EDD8),
      ],
    );
    const boxDecoration = BoxDecoration(
      gradient: linearGradient,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(kLargeRadius),
        bottomRight: Radius.circular(kLargeRadius),
      ),
    );
    return Container(
      height: 300,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: boxDecoration,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: CircleAvatar(),
                ),
              ),
              Chip(
                backgroundColor: kLight60,
                avatar: Image.asset(
                  'assets/icons/arrow-down-2.png',
                  color: kViolet100,
                ),
                label: Text(
                  'October',
                  style: body3.copyWith(color: kDark100),
                ),
              ),
              IconButton(
                icon: Image.asset(
                  'assets/icons/notifiaction.png',
                  color: kViolet100,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            'Account Balance',
            style: body1.copyWith(color: kDark50),
          ),
          Text(
            '\$9400',
            style: title2.copyWith(
              color: kDark75,
              fontSize: 48,
            ),
          ),
          const SizedBox(height: kMediumPadding),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Row(
              children: const [
                MoneyChip(
                  color: kGreen100,
                  amount: 5000,
                  title: 'Income',
                  imagePath: 'assets/icons/income.png',
                ),
                SizedBox(width: kMediumPadding),
                MoneyChip(
                  color: kRed100,
                  amount: 1200,
                  title: 'Expenses',
                  imagePath: 'assets/icons/expense.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
