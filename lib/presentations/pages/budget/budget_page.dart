import 'package:expense_tracker/app/transaction/transaction_watcher_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/pages/home/components/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadingProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final transaction = state.transactions[index];
                return TransactionCard(
                  elevation: 2,
                  transaction: transaction,
                );
              },
              itemCount: state.transactions.length,
            );
          },
          loadFailure: (state) {
            return Container(
              color: kRed100,
              height: 100,
              width: 100,
            );
          },
        );
      },
    );
  }
}
