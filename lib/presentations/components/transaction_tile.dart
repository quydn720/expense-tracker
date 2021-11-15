import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 2,
        child: ListTile(
          tileColor: kLight80,
          leading: const SquaredIconCard(
            size: 60,
            color: kYellow20,
            imagePath: 'assets/icons/shopping-bag.png',
            imageColor: kYellow100,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction.category,
                  overflow: TextOverflow.ellipsis,
                  style: body2,
                ),
              ),
              FittedBox(
                child: Text(
                  transaction.amount.toString(),
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
                  transaction.description,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  transaction.date.toString(),
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
      onLongPress: () {
        context.read<TransactionBloc>().add(DeleteTransactions(transaction));
      },
    );
  }
}
