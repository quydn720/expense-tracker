import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/utils/collection_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    Key? key,
    required this.transactions,
  }) : super(key: key);
  final List<Transaction> transactions;
  @override
  Widget build(BuildContext context) {
    final Map<DateTime, List<Transaction>> map = transactions.groupBy(
      (t) => DateTime(
        t.date.year,
        t.date.month,
        t.date.day,
      ),
    );
    final dailyTotal = map.map(
      (key, value) => MapEntry(
        key,
        value
            .map((e) => e.amount.getOrCrash())
            .toList()
            .reduce((a, b) => a + b),
      ),
    );
    final spots = dailyTotal.entries
        .map((e) => FlSpot(e.key.day.toDouble(), e.value))
        .toList();

    return SizedBox(
      height: 180,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minX: 23,
          maxX: 24,
          minY: 0,
          maxY: dailyTotal.values.reduce((c, n) => c > n ? c : n) + 25,
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              colors: [kViolet100],
              barWidth: 5,
              isStrokeCapRound: true,
              dotData:
                  FlDotData(show: false, checkToShowDot: (spot, data) => false),
              belowBarData: BarAreaData(
                show: true,
                colors: [kViolet100]
                    .map((color) => color.withOpacity(0.2))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
