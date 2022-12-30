import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({super.key, required this.transactions});

  final Map<String, List<TransactionEntity>> transactions;

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
      child: Text(text),
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
          ),
        ),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 147,
      child: BarChart(
        BarChartData(
          barGroups: [
            makeGroupData(
              0,
              transactions['Monday']?.sum()[0] ?? 0.0,
              transactions['Monday']?.sum()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              1,
              transactions['Tuesday']?.sum()[0] ?? 0.0,
              transactions['Tuesday']?.sum()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              2,
              transactions['Wednesday']?.sum()[0] ?? 0.0,
              transactions['Wednesday']?.sum()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              3,
              transactions['Thursday']?.sum()[0] ?? 0.0,
              transactions['Thursday']?.sum()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              4,
              transactions['Friday']?.sum()[0] ?? 0.0,
              transactions['Friday']?.sum()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              5,
              transactions['Saturday']?.sum()[0] ?? 0.0,
              transactions['Saturday']?.sum()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              6,
              transactions['Sunday']?.sum()[0] ?? 0.0,
              transactions['Sunday']?.sum()[1] ?? 0.0,
              39,
            ),
          ],
          titlesData: titlesData,
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
        ),
      ),
    );
  }
}

BarChartGroupData makeGroupData(int x, double y1, double y2, double width) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        toY: y1,
        color: Colors.red,
        width: 14,
        borderRadius: BorderRadius.circular(6),
      ),
      BarChartRodData(
        toY: y2,
        color: Colors.green,
        width: 14,
        borderRadius: BorderRadius.circular(6),
      ),
    ],
  );
}
