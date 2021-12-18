import '../../blocs/transaction/category_model.dart';
import '../../blocs/transaction/transaction_bloc.dart';
import '../../constants.dart';
import 'default_button.dart';
import 'squared_icon_card.dart';
import '../../size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 16.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          tileColor: kLight60,
          leading: CategoryIconCard(
            category: Category.fromName(transaction.category),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    transaction.category,
                    overflow: TextOverflow.ellipsis,
                    style: body2,
                  ),
                ),
                FittedBox(
                  child: Text(
                    (transaction.type == TransactionType.income ? '+' : '-') +
                        '\$ ' +
                        transaction.amount.toString(),
                    style: body2.copyWith(
                      color: transaction.type == TransactionType.income
                          ? kGreen100
                          : kRed100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction.description,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  DateFormat(DateFormat.HOUR_MINUTE).format(transaction.date),
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          TransactionDetailPage.routeName,
          arguments: transaction,
        );
      },
      onLongPress: () {
        context.read<TransactionBloc>().add(DeleteTransactions(transaction));
      },
    );
  }
}

class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({Key? key}) : super(key: key);
  static String routeName = 'detail_page';

  @override
  Widget build(BuildContext context) {
    final _transaction =
        ModalRoute.of(context)!.settings.arguments as Transaction;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            _transaction.type == TransactionType.expense ? kRed100 : kGreen100,
        title: const Text(
          'Detail Transaction',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/trash.png',
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 250,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kMediumPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Remove this transaction?', style: title3),
                        const Text(
                          'Are you sure do you wanna remove this transaction?',
                          style: body1,
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DefaultButton(
                              isSmall: true,
                              title: 'No',
                              isSecondary: true,
                              onPressed: () => Navigator.pop(context),
                            ),
                            DefaultButton(
                              isSmall: true,
                              title: 'Yes',
                              onPressed: () {
                                context
                                    .read<TransactionBloc>()
                                    .add(DeleteTransactions(_transaction));
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
              height: SizeConfig.screenHeight * 1 / 4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: _transaction.type == TransactionType.expense
                    ? kRed100
                    : kGreen100,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultRadius),
                  bottomRight: Radius.circular(kDefaultRadius),
                ),
              ),
              child: Column(
                children: [
                  Text('${_transaction.amount}',
                      style: titleX.copyWith(color: Colors.white)),
                  Text(_transaction.description,
                      style: body1.copyWith(color: Colors.white)),
                  Text(_transaction.date.toString(),
                      style: body3.copyWith(color: Colors.white)),
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
              child: Material(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(kDefaultRadius),
                  topRight: Radius.circular(kDefaultRadius),
                ),
                elevation: 10,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(kMediumPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('Type'),
                                Text(
                                  _transaction.type == TransactionType.expense
                                      ? 'Expense'
                                      : 'Income',
                                  style: body2,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text('Category'),
                                Text(
                                  _transaction.category,
                                  style: body2,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text('Wallet'),
                                Text(
                                  _transaction.wallet.name,
                                  style: body2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(indent: 20, endIndent: 20, thickness: 2),
                      const Expanded(
                        child: Center(
                          child: Text('This is for additional info'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DefaultButton(title: 'Edit', onPressed: () {}),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  decoration: const BoxDecoration(
                    color: kLight100,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultRadius),
                      topRight: Radius.circular(kDefaultRadius),
                    ),
                  ),
                  height: SizeConfig.screenHeight * 3 / 5 + 65,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
