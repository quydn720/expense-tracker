import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/pages/home/components/transaction_card.dart';
import 'package:expense_tracker/utils/extension_helper.dart';
import 'package:flutter/material.dart';

class ListTransactionWithHeader extends StatelessWidget {
  const ListTransactionWithHeader({
    Key? key,
    required this.map,
  }) : super(key: key);

  final MapEntry<DateTime, List<Transaction>> map;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultBar(
          title: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text(
              map.key.onlyDateFormatted,
              style: title3,
            ),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: map.value.length,
          itemBuilder: (context, index) {
            return TransactionCard(
              transaction: map.value[index],
              elevation: 2,
            );
          },
        ),
      ],
    );
  }
}
