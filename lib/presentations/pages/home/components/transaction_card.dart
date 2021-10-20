import 'package:expense_tracker/infrastructure/transaction/transaction_dto.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    this.elevation,
    this.transaction,
  }) : super(key: key);
  final double? elevation;

  final TransactionDTO? transaction;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          tileColor: kLight80,
          horizontalTitleGap: kDefaultPadding,
          leading: const SquaredIconCard(
            color: kYellow20,
            size: 60,
            imagePath: 'assets/icons/shopping-bag.png',
            imageColor: kYellow100,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                transaction?.category ?? 'Placeholder',
                style: body2,
              ),
              Text(
                transaction?.amount.toString() ?? '-VND 200.000',
                style: body2.copyWith(color: kGreen100),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction?.description ??
                      'Buying something very long like this',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 80,
                child: Text(
                  '3h30 pm',
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
