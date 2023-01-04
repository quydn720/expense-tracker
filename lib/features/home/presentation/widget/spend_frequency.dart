import 'package:expense_tracker/charts/weekly_chart.dart';
import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';

class SpendFrequency extends StatelessWidget {
  const SpendFrequency({super.key, required this.transactions});

  final Iterable<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    final _filterResult = transactions.filterByPeriod(Period.week, 0);

    final _transactions = _filterResult[0] as List<TransactionEntity>;

    final start = _filterResult[1] as DateTime;
    final end = _filterResult[2] as DateTime;

    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your reports on week: ${start.shortDate} - ${end.shortDate}',
            style: textTheme.headline6,
          ),
          SizedBox(
            height: 200,
            child: WeeklyChart(transactions: _transactions.groupWeekly()),
          ),
        ],
      ),
    );
  }
}
