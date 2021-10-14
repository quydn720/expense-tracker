import 'package:expense_tracker/utils/collection_extension.dart';

import '../../../constants.dart';
import '../../../sample_data.dart';
import '../../../size_config.dart';
import '../../components/default_app_bar.dart';
import '../../models/transaction.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatsPage extends StatefulWidget {
  const StatsPage();

  @override
  State<StatsPage> createState() => _StatsPageState();
}

// TODO: Maybe it's just need a stateless, get data and display on the screen
class _StatsPageState extends State<StatsPage> {
  List<Transaction> repo = listTransaction;
  @override
  Widget build(BuildContext context) {
    // Sorted by DateTime
    repo.sort((a, b) => a.compareTo(b));
    // group by day - should be date + month + year - to a Map
    var dailyTransactions = repo.groupBy((t) => t.dateCreated.day);
    // to a map with value is the sum of transaction of that day
    // "day" : "total amount"
    var daylyTotal = dailyTransactions.map((key, value) => MapEntry(
        key, value.map((e) => e.amount).toList().reduce((a, b) => a + b)));
    var spotsList = <FlSpot>[];
    daylyTotal.forEach((key, value) {
      spotsList.add(FlSpot(key.toDouble(), value));
    });
    final maxY = daylyTotal.values.reduce((c, n) => c > n ? c : n) + 10;

    return Column(
      children: [
        DefaultAppBar1(
          height: SizeConfig.screenHeight * 0.25,
          title: 'Statistics',
          action: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.search,
              size: SizeConfig.defaultSize * 2.0,
            ),
          ),
          iconPosition: IconPosition.right,
        ),
        Spacer(),
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      drawHorizontalLine: false,
                      drawVerticalLine: true,
                      getDrawingVerticalLine: (value) {
                        return FlLine(
                          color: const Color(0xff37434d),
                          strokeWidth: 1,
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: false,
                      rightTitles: SideTitles(showTitles: false),
                      topTitles: SideTitles(showTitles: false),
                      bottomTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 22,
                        interval: 1,
                        getTextStyles: (context, value) => const TextStyle(
                            color: Color(0xff68737d),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 2:
                              return 'MAR';
                            case 5:
                              return 'JUN';
                            case 8:
                              return 'SEP';
                          }
                          return '';
                        },
                        margin: 8,
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTextStyles: (context, value) => const TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 1:
                              return '10k';
                            case 3:
                              return '30k';
                            case 5:
                              return '50k';
                          }
                          return '';
                        },
                        reservedSize: 32,
                        margin: 12,
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                      border:
                          Border.all(color: const Color(0xff37434d), width: 1),
                    ),
                    minX: 0,
                    maxX: daylyTotal.length.toDouble() - 1,
                    minY: 0,
                    // the highest value
                    maxY: maxY,
                    lineBarsData: [
                      LineChartBarData(
                        spots: List.generate(
                          spotsList.length,
                          (index) => FlSpot(
                            index.toDouble(),
                            spotsList[index].y,
                          ),
                        ),
                        isCurved: true,
                        colors: [kPrimaryColor],
                        barWidth: 5,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
