import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/tabs.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kMediumPadding),
      height: SizeConfig.screenHeight * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultBar(
            title: const Text('Filter transaction', style: title3),
            trailing: Chip(
              backgroundColor: const Color(0xffF1F1FA),
              label: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Text(
                  'Reset',
                  style: body3.copyWith(color: kViolet100),
                ),
              ),
            ),
          ),
          Text(
            'Filter by',
            style: title3.copyWith(
              color: kDark100,
            ),
          ),
          const Tabs(
            children: [
              Chip(
                backgroundColor: kViolet20,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Income'),
                ),
              ),
              Chip(
                backgroundColor: kLight100,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Expense'),
                ),
              ),
              Chip(
                backgroundColor: kLight100,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Transfer'),
                ),
              ),
            ],
          ),
          Text(
            'Sort by',
            style: title3.copyWith(
              color: kDark100,
            ),
          ),
          const Tabs(
            children: [
              Chip(
                backgroundColor: kViolet20,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Highest'),
                ),
              ),
              Chip(
                backgroundColor: kLight100,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Lowest'),
                ),
              ),
              Chip(
                backgroundColor: kLight100,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Newest'),
                ),
              ),
              Chip(
                backgroundColor: kLight100,
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Oldest'),
                ),
              ),
            ],
          ),
          Text(
            'Category',
            style: title3.copyWith(
              color: kDark100,
            ),
          ),
          DefaultBar(
            title: Text(
              'Choose category',
              style: body1.copyWith(color: kDark50),
            ),
            trailing: Row(
              children: [
                Text(
                  '0 selected',
                  style: body3.copyWith(color: kDark25),
                ),
                Padding(
                  padding: const EdgeInsets.all(kMediumPadding),
                  child: Image.asset(
                    'assets/icons/arrow-right-2.png',
                    color: kViolet100,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          DefaultButton(
            title: 'Apply',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
