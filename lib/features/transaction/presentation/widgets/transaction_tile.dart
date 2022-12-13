import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../app/bloc/app_bloc.dart';
import '../../../category/presentation/widgets/category_circle_icon.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    required this.onPress,
  });

  final TransactionEntity transaction;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final locale = context.read<AppBloc>().state.locale?.languageCode;
    final amount = NumberFormat.simpleCurrency(locale: locale).format(
      transaction.amount,
    );
    final _format = DateFormat.yMMMd(locale);

    final textTheme = Theme.of(context).textTheme;

    final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    );

    return Card(
      elevation: 0,
      shape: roundedRectangleBorder,
      child: ListTile(
        onTap: onPress,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        shape: roundedRectangleBorder,
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
                child: Text(amount, style: textTheme.bodyText1),
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
            Text(
              _format.format(transaction.dateCreated),
              maxLines: 1,
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
