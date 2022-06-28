import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/transaction/transaction_bloc.dart';
import '../../../../constants.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text('Spend frequency', style: title3),
        ),
        SizedBox(
          height: 180,
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              if (state is TransactionLoaded) {
                final dailyTotal = context
                    .read<TransactionBloc>()
                    .transactionRepository
                    .mapDateTransaction
                    .map(
                      (key, value) => MapEntry(
                        key,
                        value
                            .map((e) => e.amount)
                            .toList()
                            .reduce((a, b) => a + b),
                      ),
                    );
                final spots = dailyTotal.entries
                    .where(
                      (e) =>
                          e.key.month == DateTime.now().month &&
                          e.key.year == DateTime.now().year,
                    )
                    .map((e) => FlSpot(e.key.day.toDouble(), e.value))
                    .toList();
                return spots.isNotEmpty
                    ? LineChart(
                        LineChartData(
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(show: false),
                          borderData: FlBorderData(show: false),
                          minX: spots
                              .map((e) => e.x)
                              .reduce((a, b) => a < b ? a : b),
                          maxX: spots
                              .map((e) => e.x)
                              .reduce((a, b) => a > b ? a : b),
                          minY: 0,
                          maxY: dailyTotal.values
                                  .reduce((c, n) => c > n ? c : n) +
                              15,
                          lineBarsData: [
                            LineChartBarData(
                              spots: spots,
                              isCurved: false,
                              color: kViolet100,
                              barWidth: 5,
                              isStrokeCapRound: true,
                              dotData: FlDotData(
                                show: false,
                                checkToShowDot: (spot, data) => false,
                              ),
                              belowBarData: BarAreaData(
                                show: true,
                                color: kViolet20,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 180,
                        child: Center(
                          child: Text(
                            "You haven't had any transactions",
                          ),
                        ),
                      );
              } else {
                return Container();
              }
            },
          ),
        ),
      ],
    );
  }
}
