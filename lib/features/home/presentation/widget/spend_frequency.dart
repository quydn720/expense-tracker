import 'package:expense_tracker/charts/weekly_chart.dart';
import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/extensions/number_extensions.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';

class SpendFrequency extends StatelessWidget {
  const SpendFrequency({super.key, required this.transactions});

  final Iterable<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    final _filterResult = transactions.filterByPeriod(Period.week, 0);
    final _transactions = _filterResult[0] as List<TransactionEntity>;
    final _spentInPeriod = _transactions.sum()[0];
    // final _incomeInPeriod = _transactions.sum()[1];

    final start = _filterResult[1] as DateTime;
    final end = _filterResult[2] as DateTime;

    final numOfDays = end.difference(start).inDays;

    final _avgPerDay = _transactions.sum()[0] / numOfDays;

    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${start.shortDate} - ${end.shortDate}',
                  style: textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text('USD ', style: textTheme.headline6),
                      Text(_spentInPeriod.removeDecimalZeroFormat()),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Avg/day', style: textTheme.headline6),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Text('USD ', style: textTheme.headline6),
                      Text(_avgPerDay.removeDecimalZeroFormat()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: WeeklyChart(transactions: _transactions.groupWeekly()),
        ),
      ],
    );
  }
}
