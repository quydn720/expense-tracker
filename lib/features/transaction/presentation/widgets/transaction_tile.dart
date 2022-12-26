import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/widgets/category_circle_icon.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    this.onPress,
  });

  factory TransactionTile.empty() {
    return TransactionTile(
      transaction: TransactionEntity(
        id: 'mock id',
        category: const CategoryEntity(
          name: 'Category',
          icon: Icons.ac_unit,
          color: Colors.yellow,
          categoryType: CategoryType.income,
        ),
        description: 'some thing',
        dateCreated: DateTime(2023),
        amount: 10,
        walletId: 'wallet 1',
      ),
      onPress: () {},
    );
  }

  final TransactionEntity transaction;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppBloc>().state;

    final textTheme = Theme.of(context).textTheme;

    final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    );

    final amount = appState.numberFormatter.format(transaction.amount);
    final date = appState.dateFormatter.format(transaction.dateCreated);

    final color = transaction.category.categoryType == CategoryType.expense
        ? Colors.red
        : Colors.green;

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
                  style: textTheme.bodyText1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              FittedBox(
                child: Text(
                  amount,
                  style: textTheme.bodyText1?.copyWith(color: color),
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
                transaction.description ?? '',
                style: textTheme.subtitle1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(date, maxLines: 1, textAlign: TextAlign.end),
          ],
        ),
      ),
    );
  }
}
