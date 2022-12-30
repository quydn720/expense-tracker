import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsLineChart extends StatelessWidget {
  const TransactionsLineChart({super.key});

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontSize: 16,
    );
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
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TransactionBloc>().state;
    final transactions = state.transactions.groupWeekly();

    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              interval: 1,
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: getTitles,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        // FlTitlesData(
        //   show: true,
        //   rightTitles: AxisTitles(
        //     sideTitles: SideTitles(showTitles: false),
        //   ),
        //   topTitles: AxisTitles(
        //     sideTitles: SideTitles(showTitles: false),
        //   ),
        //   bottomTitles: AxisTitles(
        //     sideTitles: SideTitles(showTitles: false),
        //   ),
        //   leftTitles: AxisTitles(
        //     sideTitles: SideTitles(showTitles: false),
        //   ),
        // ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 3),
              const FlSpot(1, 2),
              const FlSpot(2, 5),
              const FlSpot(3, 3),
              const FlSpot(4, 4),
              const FlSpot(5, 3),
              const FlSpot(6, 4),
            ],
            preventCurveOverShooting: true,
            isCurved: true,
            barWidth: 6,
            isStrokeCapRound: true,
            color: Theme.of(context).primaryColor,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xff8B50FF).withOpacity(0.24),
                  const Color(0xff8B50FF).withOpacity(0),
                ],
              ),
            ),
          ),
        ],
        borderData: FlBorderData(show: false),
        backgroundColor: Colors.white,
        gridData: FlGridData(show: false),
      ),
    );
  }
}
