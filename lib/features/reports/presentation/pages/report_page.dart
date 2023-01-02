import 'package:expense_tracker/charts/weekly_chart.dart';
import 'package:expense_tracker/extensions/transaction_extensions.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/home/presentation/widget/spend_frequency.dart';
import 'package:expense_tracker/features/reports/presentation/cubit/reports_cubit.dart';
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionReports extends StatelessWidget {
  const TransactionReports({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportsCubit(
        transactionRepository: context.read<ITransactionRepository>(),
      )..requestSubscription(),
      child: Builder(
        builder: (context) {
          final textTheme = Theme.of(context).textTheme;
          final l10n = context.l10n;

          final incomes = context.watch<ReportsCubit>().state.incomes;
          final expenses = context.watch<ReportsCubit>().state.expenses;

          return Scaffold(
            appBar: DefaultAppBar(
              title: 'Reports',
              trailings: [
                IconButton(
                  onPressed: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (_) {
                        final controller = context.read<ReportsCubit>();
                        return Container(
                          color: Theme.of(context).canvasColor,
                          height: 200,
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                              initialItem: controller.state.period.index,
                            ),
                            itemExtent: 32,
                            onSelectedItemChanged: controller.changePeriod,
                            children: List<Widget>.generate(
                              Period.values.length,
                              (int index) {
                                return Text(Period.values[index].name);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.calendar_month),
                )
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                (() {
                  switch (context.watch<ReportsCubit>().state.period) {
                    case Period.day:
                      return WeeklyChart(transactions: expenses.groupWeekly());
                    case Period.week:
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 32,
                            child: Text(
                              l10n.expense,
                              style: textTheme.headline6?.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SpendFrequency(transactions: expenses),
                          const Divider(),
                          SizedBox(
                            height: 32,
                            child: Text(
                              l10n.income,
                              style: textTheme.headline6?.copyWith(
                                color: Colors.green,
                              ),
                            ),
                          ),
                          SpendFrequency(transactions: incomes),
                        ],
                      );
                    case Period.month:
                      return MonthlyChart(
                        expenses: expenses,
                        startDate: DateTime(2023),
                        endDate: DateTime(2023, 1, 31),
                      );
                    case Period.year:
                      return const Text('default');
                  }
                }()),
              ],
            ),
          );
        },
      ),
    );
  }
}
