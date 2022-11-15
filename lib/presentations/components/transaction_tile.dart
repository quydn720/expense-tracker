import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../constants.dart';
import 'squared_icon_card.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    required this.onPress,
    required this.onLongPress,
  });

  final Transaction transaction;
  final VoidCallback onPress;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    final moeny = NumberFormat.simpleCurrency(
      locale: context.read<LocaleController>().locale.languageCode,
    ).format(transaction.amount);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ListTile(
        onTap: onPress,
        onLongPress: onLongPress,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        leading: CategoryIconCard(category: transaction.category),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction.category.name,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              FittedBox(
                child: Text(
                  // '\$ ${transaction.amount}',
                  moeny,
                  // TODO(quy): move logic to bloc
                  // '${transaction.type == TransactionType.income ? '+' : '-'}\$ ${transaction.amount}',
                  style: body2.copyWith(
                    color: transaction.type == TransactionType.income
                        ? kGreen100
                        : kRed100,
                  ),
                ),
              ),
            ],
          ),
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
                DateFormat(DateFormat.HOUR_MINUTE).format(transaction.date),
                maxLines: 1,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
