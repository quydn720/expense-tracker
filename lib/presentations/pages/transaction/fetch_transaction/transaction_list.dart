import 'package:expense_tracker/blocs/filter/filter_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:expense_tracker/utils/extension_helper.dart';
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
                      leading: const Chip(label: Text('December')),
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
                  ...te.entries
                      .where(
                        (element) => element.key.month == DateTime.now().month,
                      ) // TODO: equality with the choosen month
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kMediumPadding,
                            vertical: kDefaultPadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(e.key.onlyDateFormatted,
                                    style: title3),
                              ),
                              ...e.value
                                  .map((e) => TransactionTile(transaction: e))
                                  .toList(),
                            ],
                          ),
                        ),
                      ),
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
