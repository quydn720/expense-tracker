import 'package:expense_tracker/presentations/components/common_components.dart';
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
            return const CircularProgressIndicator();
          } else if (state is FilterLoaded) {
            final transactions = state.transactions;
            var te = transactions.groupBy(
              (trans) => DateTime(
                trans.date.year,
                trans.date.month,
                trans.date.day,
              ),
            );
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
                              currentTime: DateTime.now(),
                            ),
                            onConfirm: (v) =>
                                context.read<FilterBloc>().add(DateChanged(v)),
                          );
                        },
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => const FilterBottomSheet(),
                            );
                          },
                          icon: Image.asset('assets/icons/sort.png'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kViolet20,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.all(kMediumPadding),
                    padding: const EdgeInsets.only(
                      left: kMediumPadding,
                      top: kDefaultPadding,
                      bottom: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'See your finanical report',
                            style: body3.copyWith(color: kViolet100),
                          ),
                          Image.asset(
                            'assets/icons/arrow-right-2.png',
                            color: kViolet100,
                          ),
                        ],
                      ),
                    ),
                  ),
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
