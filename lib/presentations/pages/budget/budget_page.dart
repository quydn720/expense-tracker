import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:expense_tracker/app/transaction/transaction_watcher_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/pages/home/components/transaction_card.dart';
import 'package:expense_tracker/utils/collection_extension.dart';
import 'package:expense_tracker/utils/extension_helper.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadingProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) {
                final map = state.transactions.groupBy(
                  (t) => DateTime(
                    t.date.year,
                    t.date.month,
                    t.date.day,
                  ),
                );
                return SingleChildScrollView(
                  child: Column(
                    children: map.entries
                        .map(
                          (e) => Column(
                            children: [
                              DefaultBar(
                                title: Padding(
                                  padding:
                                      const EdgeInsets.all(kDefaultPadding),
                                  child: Text(
                                    e.key.onlyDateFormatted,
                                    style: title3,
                                  ),
                                ),
                              ),
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: e.value.length,
                                itemBuilder: (context, index) {
                                  return TransactionCard(
                                    transaction: e.value[index],
                                    elevation: 2,
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                );
              },
              loadFailure: (state) {
                return Container(
                  color: kRed100,
                  height: 100,
                  width: double.infinity,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class OnlyDate {
  final int day;
  final int month;
  final int year;

  const OnlyDate({
    required this.day,
    required this.month,
    required this.year,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OnlyDate &&
        other.day == day &&
        other.month == month &&
        other.year == year;
  }

  @override
  int get hashCode => day.hashCode ^ month.hashCode ^ year.hashCode;

  @override
  String toString() => 'OnlyDate(day: $day, month: $month, year: $year)';
}
