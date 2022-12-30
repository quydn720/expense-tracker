import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/transaction/presentation/widgets/transaction_tile.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/routes/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.status != HomeStatus.success) {
              return const Center(child: CircularProgressIndicator());
            }
            final itemCount =
                (state.transactions.length > 5) ? 5 : state.transactions.length;
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) =>
                  TransactionTile(transaction: state.transactions[index]),
              itemCount: itemCount,
            );
          },
        ),
      ],
    );
  }
}
