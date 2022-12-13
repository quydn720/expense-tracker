import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../presentation/widgets/transaction_tile.dart';
import '../bloc/transaction_bloc.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state.status != TransactionStatus.loaded) {
          return const Center(child: CircularProgressIndicator());
        }
        return SizedBox(
          height: 400,
          child: ListView(
            children: [
              for (final transaction in state.transactions)
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
