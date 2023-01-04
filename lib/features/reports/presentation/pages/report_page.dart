import 'package:expense_tracker/charts/weekly_chart.dart';
import 'package:expense_tracker/extensions/date_extensions.dart';
import 'package:expense_tracker/extensions/number_extensions.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/reports/presentation/cubit/reports_cubit.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionReports extends StatelessWidget {
  const TransactionReports({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportsCubit(
        transactionRepository: context.read<ITransactionRepository>(),
      )..requestSubscription(),
      child: Builder(
        builder: (context) {
          final l10n = context.l10n;
          final expenses = context.watch<ReportsCubit>().state.expenses;

          return Scaffold(
            appBar: DefaultAppBar(
              title: l10n.reports,
              trailings: [
                IconButton(
                  onPressed: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (_) {
                        final controller = context.read<ReportsCubit>();
                        return Container(
                          color: Theme.of(context).canvasColor,
                          height: 200,
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                              initialItem: controller.state.period.index,
                            ),
                            itemExtent: 32,
                            onSelectedItemChanged: controller.changePeriod,
                            children: List<Widget>.generate(
                              Period.values.length,
                              (int index) {
                                return Text(Period.values[index].name);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.calendar_month),
                )
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                (() {
                  switch (context.watch<ReportsCubit>().state.period) {
                    case Period.day:
                      return WeeklyChart(transactions: expenses.groupWeekly());
                    case Period.week:
                      return const _WeeklyReports();
                    case Period.month:
                      return MonthlyChart(
                        expenses: expenses,
                        startDate: DateTime(2023),
                        endDate: DateTime(2023, 1, 31),
                      );
                    case Period.year:
                      return const Text('default');
                  }
                }()),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _WeeklyReports extends StatelessWidget {
  const _WeeklyReports();

  @override
  Widget build(BuildContext context) {
    final incomes = context.watch<ReportsCubit>().state.incomes;
    final expenses = context.watch<ReportsCubit>().state.expenses;
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            Text(
              l10n.income,
              style: textTheme.headline6,
            ),
            const Spacer(),
            Text(
              incomes.sum().toString(),
              style: textTheme.headline6?.copyWith(
                color: Colors.green,
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              l10n.expense,
              style: textTheme.headline6,
            ),
            const Spacer(),
            Text(
              expenses.sum().toString(),
              style: textTheme.headline6?.copyWith(
                color: Colors.red,
              ),
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            Text(
              l10n.total,
              style: textTheme.headline6,
            ),
            const Spacer(),
            Text(
              (expenses.sum() + incomes.sum()).toString(),
              style: textTheme.headline6,
            )
          ],
        ),
        const Divider(),
        SizedBox(
          height: 32,
          child: Text(
            l10n.expense,
            style: textTheme.headline6?.copyWith(
              color: Colors.red,
            ),
          ),
        ),
        SpendFrequency2(
          transactions: expenses,
          type: CategoryType.expense,
        ),
        const Divider(),
        SizedBox(
          height: 32,
          child: Text(
            l10n.income,
            style: textTheme.headline6?.copyWith(
              color: Colors.green,
            ),
          ),
        ),
        SpendFrequency2(
          transactions: incomes,
          type: CategoryType.income,
        ),
      ],
    );
  }
}

class SpendFrequency2 extends StatelessWidget {
  const SpendFrequency2({
    super.key,
    required this.transactions,
    required this.type,
  });

  final Iterable<TransactionEntity> transactions;
  final CategoryType type;

  @override
  Widget build(BuildContext context) {
    final _filterResult = transactions.filterByPeriod(Period.week, 0);

    final _transactions = _filterResult[0] as List<TransactionEntity>;
    final _spentInPeriod = _transactions.sum();

    final start = _filterResult[1] as DateTime;
    final end = _filterResult[2] as DateTime;

    final numOfDays = end.difference(start).inDays;

    final _avgPerDay = _spentInPeriod / numOfDays;

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
            child: WeeklyChart2(
              transactions: _transactions.groupWeekly(),
              type: _transactions[0].category.categoryType,
            ),
          ),
        ],
      ),
    );
  }
}

class WeeklyChart2 extends StatelessWidget {
  const WeeklyChart2({
    super.key,
    required this.transactions,
    required this.type,
  });

  final Map<String, List<TransactionEntity>> transactions;
  final CategoryType type;

  Widget getTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'M';
        break;
      case 1:
        text = 'T';
        break;
      case 2:
        text = 'W';
        break;
      case 3:
        text = 'T';
        break;
      case 4:
        text = 'F';
        break;
      case 5:
        text = 'S';
        break;
      case 6:
        text = 'S';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (value, meta) => SideTitleWidget(
              axisSide: meta.axisSide,
              child: Text(
                value.toStringAsFixed(0),
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  @override
  Widget build(BuildContext context) {
    final color = type == CategoryType.income ? Colors.green : Colors.red;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 147,
      child: BarChart(
        BarChartData(
          barGroups: [
            makeGroupDataByType(
              0,
              transactions['Monday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
            makeGroupDataByType(
              1,
              transactions['Tuesday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
            makeGroupDataByType(
              2,
              transactions['Wednesday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
            makeGroupDataByType(
              3,
              transactions['Thursday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
            makeGroupDataByType(
              4,
              transactions['Friday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
            makeGroupDataByType(
              5,
              transactions['Saturday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
            makeGroupDataByType(
              6,
              transactions['Sunday']?.sum() ?? 0.0,
              39,
              color: color,
            ),
          ],
          titlesData: titlesData,
          borderData: FlBorderData(
            show: true,
            border: const Border(bottom: BorderSide(), left: BorderSide()),
          ),
          gridData: FlGridData(show: false),
        ),
      ),
    );
  }
}

BarChartGroupData makeGroupDataByType(
  int x,
  double y,
  double width, {
  Color color = Colors.green,
}) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        toY: y,
        color: color,
        width: 14,
        borderRadius: BorderRadius.circular(6),
      ),
    ],
  );
}
