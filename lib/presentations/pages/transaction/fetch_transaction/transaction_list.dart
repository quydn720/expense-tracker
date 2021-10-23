import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/domain/core/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/domain/transaction/models/value_object.dart';
import 'package:expense_tracker/domain/transaction/models/wallet.dart';
import 'package:expense_tracker/domain/transaction/transaction.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/pages/home/components/pills.dart';
import 'package:expense_tracker/presentations/pages/home/components/transaction_card.dart';
import 'package:expense_tracker/presentations/pages/transaction/fetch_transaction/filter_bottom_sheet.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Column(
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
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TransactionCard(
                    elevation: 0,
                    transaction: Transaction(
                      id: UniqueId(),
                      category: Category.empty(),
                      wallet: Wallet(
                        id: UniqueId(),
                        amount: WalletAmount('0'),
                        imagePath: 'assets/icons/wallet-3.png',
                        name: WalletName('a'),
                      ),
                      amount: TransactionAmount('0'),
                      description: 'description',
                      date: DateTime.now(),
                      type: TransactionType.expense,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  if (index % 5 == 0) {
                    return const DefaultBar(
                      title: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Today', style: title3),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
