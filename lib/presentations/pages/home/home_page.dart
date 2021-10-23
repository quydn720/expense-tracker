import 'package:expense_tracker/app/transaction/transaction_watcher_bloc.dart';
import 'package:expense_tracker/presentations/components/tabs.dart';
import 'package:expense_tracker/presentations/pages/home/components/line_chard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../components/bars.dart';
import 'components/top_navigation.dart';
import 'components/transaction_card.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/daily_page';
  static const int maxTransactionDisplayed = 5;
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
                      LineChartWidget(
                        transactions: state.transactions,
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
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final transaction = state.transactions[index];
                          return TransactionCard(
                            elevation: 2,
                            transaction: transaction,
                          );
                        },
                        itemCount: (state.transactions.length <
                                maxTransactionDisplayed)
                            ? state.transactions.length
                            : maxTransactionDisplayed,
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
              width: double.infinity,
            );
          },
        );
      },
    );
  }
}
