import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/presentations/pages/detail/transaction_detail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/transaction/category_model.dart';
import '../../blocs/transaction/transaction_bloc.dart';
import '../../constants.dart';
import 'squared_icon_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.transaction,
    this.canTouch = true,
  }) : super(key: key);
  final Transaction transaction;
  final bool canTouch;
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
      onTap: (canTouch == true)
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider.value(
                        value: context.read<WalletBloc>(),
                      ),
                      BlocProvider.value(
                        value: context.read<TransactionBloc>(),
                      ),
                    ],
                    child: TransactionDetailPage(transaction: transaction),
                  ),
                ),
              );
            }
          : null,
      onLongPress: (canTouch == true)
          ? () {
              context
                  .read<TransactionBloc>()
                  .add(DeleteTransactions(transaction));
              final wallet = context
                  .read<WalletBloc>()
                  .walletRepository
                  .currentWallets
                  .where((e) => e.id == transaction.walletId)
                  .first;
              int offset = transaction.type == TransactionType.income ? 1 : -1;
              context.read<WalletBloc>().add(
                    UpdateWallet(
                      wallet.copyWith(
                          amount: wallet.amount + transaction.amount * -offset),
                    ),
                  );
            }
          : null,
    );
  }
}
