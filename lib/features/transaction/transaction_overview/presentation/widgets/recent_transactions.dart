import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/routes/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const seeAllTransactionButtonKey = Key('homeScreen_seeAll_button');

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;
    return Column(
      children: [
        SizedBox(
          height: 54,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.recent_transactions, style: textTheme.headline6),
              GestureDetector(
                key: seeAllTransactionButtonKey,
                onTap: () {
                  context.go('/${ScaffoldTab.transactions.name}');
                },
                child: Chip(
                  label: Text(
                    l10n.see_all,
                    style: textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // BlocBuilder<TransactionBloc, TransactionState>(
        //   builder: (context, state) {
        //     if (state.status != TransactionStatus.loaded) {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //     return SizedBox(
        //       height: 400,
        //       child: ListView(
        //         children: [
        //           for (final transaction in state.transactions)
        //             TransactionTile(
        //               transaction: transaction,
        //               onPress: () => context.push(
        //                 '/transactions/${transaction.id}',
        //                 extra: transaction,
        //               ),
        //             )
        //         ],
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
