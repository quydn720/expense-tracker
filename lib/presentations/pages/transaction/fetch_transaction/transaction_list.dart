import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../../../../blocs/filter/filter_bloc.dart';
import '../../../../constants.dart';
import '../../../../utils/extension_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';

import 'filter_bottom_sheet.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);
  static String routeName = '/transaction_page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<FilterBloc, FilterState>(
        builder: (context, state) {
          if (state is FilterLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FilterLoaded) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: kMediumPadding),
                    child: AppBar(
                      leadingWidth: 150,
                      leading: InkWell(
                        child: BlocBuilder<FilterBloc, FilterState>(
                          builder: (context, state) {
                            if (state is FilterLoaded) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Chip(
                                  label: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      DateFormat(DateFormat.MONTH).format(
                                        context.read<FilterBloc>().date,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Container();
                            }
                          },
                        ),
                        onTap: () {
                          DatePicker.showPicker(
                            context,
                            pickerModel: CustomMonthPicker(
                              currentTime: context.read<FilterBloc>().date,
                            ),
                            onConfirm: (v) =>
                                context.read<FilterBloc>().add(DateChanged(v)),
                            theme: const DatePickerTheme(itemStyle: body1),
                          );
                        },
                      ),
                      actions: [
                        Stack(
                          children: [
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (_) => BlocProvider.value(
                                    value: context.read<FilterBloc>(),
                                    child: const FilterBottomSheet(),
                                  ),
                                );
                              },
                              icon: Image.asset('assets/icons/sort.png'),
                            ),
                            Container(
                              child:
                                  context.read<FilterBloc>().filterCountStr !=
                                          null
                                      ? Positioned(
                                          top: 4,
                                          right: 0,
                                          child: CircleAvatar(
                                              radius: 10,
                                              child: Text(
                                                context
                                                    .read<FilterBloc>()
                                                    .filterCountStr!,
                                                style: tiny,
                                              )),
                                        )
                                      : Container(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  const MonthReport(),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: kViolet20,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   margin: const EdgeInsets.all(kMediumPadding),
                  //   padding: const EdgeInsets.only(
                  //     left: kMediumPadding,
                  //     top: kDefaultPadding,
                  //     bottom: kDefaultPadding,
                  //     right: kDefaultPadding,
                  //   ),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) =>
                  //                 const FinancialReportPage()),
                  //       );
                  //     },
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Text(
                  //           'See your finanical report',
                  //           style: body3.copyWith(color: kViolet100),
                  //         ),
                  //         Image.asset(
                  //           'assets/icons/arrow-right-2.png',
                  //           color: kViolet100,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const Divider(),

                  ...state.transactions
                      .groupBy((trans) => DateTime(
                            trans.date.year,
                            trans.date.month,
                            trans.date.day,
                          ))
                      .entries
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kMediumPadding,
                            vertical: kDefaultPadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.key.onlyDateFormatted,
                                style: title3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Total: ', style: body1),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      '${e.value.map((e) => e.amount * (e.type == TransactionType.income ? 1 : -1)).reduce((a, b) => a + b)}',
                                      style: body2,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              ...e.value
                                  .map((e) => TransactionTile(transaction: e))
                                  .toList(),
                              const Divider(),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class MonthReport extends StatelessWidget {
  const MonthReport({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kMediumPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Income'),
              TotalTextByType(TransactionType.income)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Expense'),
              TotalTextByType(TransactionType.expense),
            ],
          ),
          const Divider(thickness: 3, color: kDark25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Total'),
              TotalText(),
            ],
          ),
        ],
      ),
    );
  }
}

class TotalTextByType extends StatelessWidget {
  const TotalTextByType(
    this.type, {
    Key? key,
  }) : super(key: key);
  final TransactionType type;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final listOfTypeT =
              state.transactions.where((trans) => trans.type == type).toList();
          final text = (listOfTypeT.isNotEmpty)
              ? listOfTypeT.map((e) => e.amount).reduce((a, b) => a + b)
              : 0;
          final prefix = type == TransactionType.expense ? '-' : '+';
          return Text('$prefix $text');
        } else {
          return const Text('Loading...');
        }
      },
    );
  }
}

class TotalText extends StatelessWidget {
  const TotalText({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoaded) {
          final listOfExpense = state.transactions
              .where((trans) => trans.type == TransactionType.expense)
              .toList();
          final listOfIncome = state.transactions
              .where((trans) => trans.type == TransactionType.income)
              .toList();
          final expense = (listOfExpense.isNotEmpty)
              ? listOfExpense.map((e) => e.amount).reduce((a, b) => a + b)
              : 0;
          final income = (listOfIncome.isNotEmpty)
              ? listOfIncome.map((e) => e.amount).reduce((a, b) => a + b)
              : 0;
          final text = income - expense;
          return Text(
            '$text',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: text > 0 ? kGreen100 : kRed100,
            ),
          );
        } else {
          return const Text('Loading...');
        }
      },
    );
  }
}
