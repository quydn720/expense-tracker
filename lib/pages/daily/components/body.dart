import 'package:expense_tracker/models/transaction.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listTransaction = <Transaction>[
      Transaction(
          payeeName: 'Buy grocery',
          dateCreated: DateTime.now(),
          amount: 12.0,
          category: 'Food'),
      Transaction(
          payeeName: 'T-shirt',
          dateCreated: DateTime.now(),
          amount: 45.0,
          category: 'Shopping'),
      Transaction(
          payeeName: 'Movie ticket',
          dateCreated: DateTime.now(),
          amount: 10.0,
          category: 'Entertainment'),
      Transaction(
          payeeName: 'Buy grocery',
          dateCreated: DateTime.now(),
          amount: 5.0,
          category: 'Food'),
    ];
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
              itemCount: listTransaction.length,
              itemBuilder: (context, index) {
                final transaction = listTransaction[index];
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
