import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../blocs/transaction/transaction_bloc.dart';
import '../../../constants.dart';

class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({
    super.key,
    required Transaction transaction,
  }) : _transaction = transaction;
  static String routeName = 'detail_page';
  final Transaction _transaction;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: ''),
      body: Center(child: Text(_transaction.amount.toString())),
    );
  }
}

class DeleteTransactionBottomSheet extends StatelessWidget {
  const DeleteTransactionBottomSheet({
    super.key,
    required Transaction transaction,
  }) : _transaction = transaction;

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
                ElevatedButton(
                  child: const Text('No'),
                  onPressed: () => Navigator.pop(context),
                ),
                ElevatedButton(
                  child: const Text('Yes'),
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
