import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/utils/extension_helper.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    this.elevation,
    required this.transaction,
  }) : super(key: key);
  final double? elevation;

  final Transaction transaction;
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
              Expanded(
                child: Text(
                  transaction.category.name,
                  overflow: TextOverflow.ellipsis,
                  style: body2,
                ),
              ),
              FittedBox(
                child: Text(
                  // TODO: Consider to get the dto - or the stringlify obj
                  transaction.amount.getOrCrash().toString(),
                  style: body2.copyWith(
                    color: transaction.type == TransactionType.income
                        ? kGreen100
                        : kRed100,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction.description ?? '',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  transaction.date.hourFormatted,
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
