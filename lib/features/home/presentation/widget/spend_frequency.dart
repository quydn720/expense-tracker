import 'package:expense_tracker/charts/weekly_chart.dart';
import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/extensions/number_extensions.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpendFrequency extends StatelessWidget {
  const SpendFrequency({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = context.watch<HomeBloc>().state.transactions;

    final _filterResult = transactions.filterByPeriod(Period.week, 0);
    final _transactions = _filterResult[0] as List<TransactionEntity>;
    final _spentInPeriod = _transactions.sum()[0];

    final start = _filterResult[1] as DateTime;
    final end = _filterResult[2] as DateTime;

    final numOfDays = end.difference(start).inDays;

    final _avgPerDay = _transactions.sum()[0] / numOfDays;

    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        SizedBox(
          height: 32,
          child: Text(l10n.spend_frequency, style: textTheme.headline6),
        ),
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
          child: WeeklyChart(transactions: transactions.groupWeekly()),
        ),
      ],
    );
  }
}
