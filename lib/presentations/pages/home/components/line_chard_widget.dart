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
    final a = transactions.groupBy((t) => t.date.day);

    final dailyTotal = a.map((key, value) => MapEntry(
        key, value.map((e) => e.amount).toList().reduce((a, b) => a + b)));
    final spots = dailyTotal.entries
        .map((e) => FlSpot(e.key.toDouble(), e.value))
        .toList();

    return SizedBox(
      height: 180,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minX: 20,
          maxX: 22, //dailyTotal.length.toDouble() - 1,
          minY: 0,
          maxY: dailyTotal.values.reduce((c, n) => c > n ? c : n) + 25,
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: false,
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
