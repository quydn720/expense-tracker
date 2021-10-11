import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../models/transaction.dart';
import '../../../sample_data.dart';
import '../../../size_config.dart';

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
    // filter the list for the current selected day / month, should be like that.
    final list = listTransaction
        .where((transaction) => transaction.dateCreated.day == selectedDay.day)
        .toList();
    final temp = list.map((e) => e.amount).toList();
    final total = (temp.length != 0) ? temp.reduce((a, b) => a + b) : null;
    return (total != null)
        ? Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Container(),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Total',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        '\$$total',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: kOptionalColor, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  // subtitle: Text('Fri 10 a.m'),
                ),
                Divider(
                  thickness: 2,
                  indent: SizeConfig.screenWidth * 0.15,
                  endIndent: SizeConfig.screenWidth * 0.15,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (_, index) => Divider(
                      thickness: 2.0,
                      indent: SizeConfig.screenWidth * 0.15,
                      endIndent: SizeConfig.screenWidth * 0.15,
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
          )
        : Center(
            child: Text(
            'Not having any transaction today',
            style: Theme.of(context).textTheme.bodyText2,
          ));
  }
}
