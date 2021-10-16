import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../components/bars.dart';
import 'components/top_navigation.dart';
import 'components/transaction_card.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/daily_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopNavigation(),
              const DefaultBar(
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Spend Frequency', style: title3),
                ),
              ),
              SizedBox(
                height: 180,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    minX: 0,
                    maxX: 11,
                    minY: 0,
                    maxY: 6,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 3),
                          FlSpot(2.6, 2),
                          FlSpot(4.9, 5),
                          FlSpot(6.8, 3.1),
                          FlSpot(8, 4),
                          FlSpot(9.5, 3),
                          FlSpot(11, 4),
                        ],
                        isCurved: true,
                        colors: [kViolet100],
                        barWidth: 5,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: false,
                        ),
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
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Tabs(
                  children: [
                    Chip(
                      backgroundColor: kYellow20,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Today'),
                      ),
                    ),
                    Chip(
                      backgroundColor: kLight100,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Week'),
                      ),
                    ),
                    Chip(
                      backgroundColor: kLight100,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Month'),
                      ),
                    ),
                    Chip(
                      backgroundColor: kLight100,
                      label: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Year'),
                      ),
                    ),
                  ],
                ),
              ),
              DefaultBar(
                title: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Recent Transaction', style: title3),
                ),
                trailing: Chip(
                  backgroundColor: const Color(0xffF1F1FA),
                  label: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      'See All',
                      style: body3.copyWith(color: kViolet100),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: TransactionCard(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: TransactionCard(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: TransactionCard(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: TransactionCard(),
              ),
              const SizedBox(height: kMediumPadding),
            ],
          ),
        ),
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }
}
