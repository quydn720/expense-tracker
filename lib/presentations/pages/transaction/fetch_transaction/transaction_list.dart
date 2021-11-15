import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/pages/home/components/pills.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/filter_bottom_sheet.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/list_transaction_with_day_header.dart';
import 'package:expense_tracker/utils/collection_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);
  static String routeName = '/transaction_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        lead: ExpandedPill(
          label: Text(
            'September',
            style: body3.copyWith(color: kDark100),
          ),
          onTap: () {},
        ),
        trail: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kMediumPadding, vertical: kDefaultPadding),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const FilterBottomSheet();
                },
              );
            },
            child: const SquaredIconCard(
              size: 48,
              imagePath: 'assets/icons/sort.png',
            ),
          ),
        ),
      ),
      body: const TransPageBody(),
    );
  }
}

//* Deal with the data - filtering is now being handle at the client side

class TransPageBody extends StatelessWidget {
  const TransPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state is TransactionLoaded) {
            return Column(
              children: [
                DefaultBar(
                  onTap: () {},
                  color: kViolet20,
                  title: Padding(
                    padding: const EdgeInsets.all(kMediumPadding),
                    child: Text(
                      'See your finanical report',
                      style: body3.copyWith(
                        color: kViolet100,
                      ),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Image.asset(
                      'assets/icons/arrow-right-2.png',
                      color: kViolet100,
                    ),
                  ),
                ),
                Column(
                  children: context
                      .read<TransactionBloc>()
                      .transactionRepository
                      .mapDateTransaction
                      .entries
                      .map((e) => Text(e.toString()))
                      .toList(),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
