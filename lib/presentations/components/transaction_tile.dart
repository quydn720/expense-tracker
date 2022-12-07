import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../features/app/bloc/app_bloc.dart';
import '../../features/category/presentation/widgets/category_circle_icon.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    required this.onPress,
    required this.onLongPress,
  });

  final TransactionEntity transaction;
  final VoidCallback onPress;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    final amount = NumberFormat.simpleCurrency(
      locale: context.read<AppBloc>().state.locale?.languageCode,
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
        leading: CategoryCircleIcon(category: transaction.category),
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
                child: Text(amount),
                // '${transaction.type == TransactionType.income ? '+' : '-'}\$ ${transaction.amount}',
              ),
            ],
          ),
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
                DateFormat(DateFormat.HOUR_MINUTE)
                    .format(transaction.dateCreated),
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
