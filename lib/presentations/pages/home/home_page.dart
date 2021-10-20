import 'package:expense_tracker/app/transaction/transaction_watcher_bloc.dart';
import 'package:expense_tracker/infrastructure/transaction/transaction_dto.dart';
import 'package:expense_tracker/presentations/components/tabs.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../components/bars.dart';
import 'components/top_navigation.dart';
import 'components/transaction_card.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/daily_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadingProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
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
                      const LineChartWidget(),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Text(
                              'See All',
                              style: body3.copyWith(color: kViolet100),
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final state =
                              context.read<TransactionWatcherBloc>().state;
                          var transactions = [];
                          state.maybeMap(
                              orElse: () {},
                              loadSuccess: (a) {
                                transactions = a.transactions;
                              });
                          final transaction = transactions[index];
                          return TransactionCard(
                            elevation: 2,
                            transaction: TransactionDTO.fromDomain(transaction),
                          );
                        },
                        itemCount: 3,
                      ),
                      const SizedBox(height: kMediumPadding),
                    ],
                  ),
                ),
              ),
            );
          },
          loadFailure: (_) {
            return Container(
              color: kRed100,
              height: 100,
              width: 100,
            );
          },
        );
      },
    );
  }
}

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: 2,
          minY: 0,
          maxY: 25,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 12),
                FlSpot(1, 5),
                FlSpot(2, 20),
              ],
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
