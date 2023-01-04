import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 147,
      child: BarChart(
        BarChartData(
          barGroups: [
            makeGroupData(
              0,
              transactions['Monday']?.sumByType()[0] ?? 0.0,
              transactions['Monday']?.sumByType()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              1,
              transactions['Tuesday']?.sumByType()[0] ?? 0.0,
              transactions['Tuesday']?.sumByType()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              2,
              transactions['Wednesday']?.sumByType()[0] ?? 0.0,
              transactions['Wednesday']?.sumByType()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              3,
              transactions['Thursday']?.sumByType()[0] ?? 0.0,
              transactions['Thursday']?.sumByType()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              4,
              transactions['Friday']?.sumByType()[0] ?? 0.0,
              transactions['Friday']?.sumByType()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              5,
              transactions['Saturday']?.sumByType()[0] ?? 0.0,
              transactions['Saturday']?.sumByType()[1] ?? 0.0,
              39,
            ),
            makeGroupData(
              6,
              transactions['Sunday']?.sumByType()[0] ?? 0.0,
              transactions['Sunday']?.sumByType()[1] ?? 0.0,
              39,
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

class MonthlyChart extends StatelessWidget {
  const MonthlyChart({
    super.key,
    required this.expenses,
    required this.startDate,
    required this.endDate,
  });

  final Iterable<TransactionEntity> expenses;
  final DateTime startDate;
  final DateTime endDate;

  Widget getTitles(double value, TitleMeta meta) {
    if (value % 5 != 0) {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text('${value.toInt()}'),
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
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final a = expenses.groupMonthly(startDate);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      height: 147,
      child: BarChart(
        BarChartData(
          barGroups: List.generate(
            a.length,
            (index) {
              final c = a[index]!;

              return makeGroupData2(index, c.sum(), 1);
            },
          ),
          titlesData: titlesData,
          gridData: FlGridData(
            show: false,
            drawVerticalLine: false,
          ),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }
}

BarChartGroupData makeGroupData2(int x, double y, double width) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        toY: y,
        color: Colors.red,
        width: 8,
        borderRadius: BorderRadius.circular(6),
      ),
    ],
  );
}
