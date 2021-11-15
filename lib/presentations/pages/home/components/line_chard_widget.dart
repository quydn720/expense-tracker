import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Map<DateTime, List<Transaction>> data;
  @override
  Widget build(BuildContext context) {
    final dailyTotal = data.map(
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
    return spots.isNotEmpty
        ? SizedBox(
            height: 180,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                minX: spots.map((e) => e.x).reduce((a, b) => a < b ? a : b),
                maxX: spots.map((e) => e.x).reduce((a, b) => a > b ? a : b),
                minY: 0,
                maxY: dailyTotal.values.reduce((c, n) => c > n ? c : n) + 15,
                lineBarsData: [
                  LineChartBarData(
                    spots: spots,
                    isCurved: false,
                    colors: [kViolet100],
                    barWidth: 5,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                        show: false, checkToShowDot: (spot, data) => false),
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
          )
        : const SizedBox(height: 180);
  }
}
