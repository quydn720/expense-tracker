import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/transaction_bloc.dart';

class RecentlyTransactions extends StatelessWidget {
  const RecentlyTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionsInitial) {
          return const Text('Initital');
        }
        if (state is TransactionsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        final transactionsSuccess = state as TransactionsLoaded;
        return SizedBox(
          height: 400,
          child: ListView(
            children: [
              for (final transaction in transactionsSuccess.transactions)
                TransactionTile(
                  transaction: transaction,
                  onPress: () => context.push(
                    '/transactions/${transaction.id}',
                    extra: transaction,
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
