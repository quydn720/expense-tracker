import '../../../models/transaction.dart';
import '../../../sample_data.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.selectedDay,
    required this.repository,
  }) : super(key: key);

  final DateTime selectedDay;
  final List<Transaction>
      repository; // sample repository, implement with database later
  @override
  Widget build(BuildContext context) {
    final list = listTransaction
        .where((transaction) => transaction.dateCreated.day == selectedDay.day)
        .toList();
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.025),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, index) => Divider(
                thickness: 2.0,
                indent: SizeConfig.screenWidth * 0.2,
                endIndent: SizeConfig.screenWidth * 0.05,
              ),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final transaction = list[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.accessibleIcon),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          transaction.payeeName,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text('\$${transaction.amount}'),
                    ],
                  ),
                  // subtitle: Text('Fri 10 a.m'),
                  subtitle: Text(transaction.date),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
