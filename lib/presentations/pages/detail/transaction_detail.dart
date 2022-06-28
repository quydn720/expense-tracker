import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../blocs/transaction/transaction_bloc.dart';
import '../../../blocs/wallet/wallet_bloc.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../components/default_button.dart';
import '../transaction/add_transaction/add_transaction.dart';

class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({
    Key? key,
    required Transaction transaction,
  })  : _transaction = transaction,
        super(key: key);
  static String routeName = 'detail_page';
  final Transaction _transaction;
  @override
  Widget build(BuildContext context) {
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
              showModalBottomSheet<void>(
                context: context,
                builder: (_) => BlocProvider.value(
                  value: context.read<TransactionBloc>(),
                  child:
                      DeleteTransactionBottomSheet(transaction: _transaction),
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
                      style: titleX.copyWith(color: Colors.white),),
                  Text(_transaction.description,
                      style: body1.copyWith(color: Colors.white),),
                  Text(
                    DateFormat(DateFormat.YEAR_MONTH_WEEKDAY_DAY)
                        .format(_transaction.date),
                    style: body3.copyWith(color: Colors.white),
                  ),
                ],
              ),),
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
                  decoration: const BoxDecoration(
                    color: kLight100,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultRadius),
                      topRight: Radius.circular(kDefaultRadius),
                    ),
                  ),
                  height: SizeConfig.screenHeight * 3 / 5 + 65,
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
                                  context
                                      .read<WalletBloc>()
                                      .walletRepository
                                      .currentWallets
                                      .where(
                                          (e) => e.id == _transaction.walletId,)
                                      .first
                                      .name,
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
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DefaultButton(
                          title: 'Edit',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (_) => MultiBlocProvider(
                                  providers: [
                                    BlocProvider.value(
                                      value: context.read<WalletBloc>(),
                                    ),
                                    BlocProvider.value(
                                      value: context.read<TransactionBloc>(),
                                    ),
                                  ],
                                  child: EditTransactionPage(
                                    transaction: _transaction,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DeleteTransactionBottomSheet extends StatelessWidget {
  const DeleteTransactionBottomSheet({
    Key? key,
    required Transaction transaction,
  })  : _transaction = transaction,
        super(key: key);

  final Transaction _transaction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kMediumPadding),
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
    );
  }
}
