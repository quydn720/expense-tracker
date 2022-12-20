import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/transaction/presentation/widgets/transaction_tile.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});
  static const String routeName = '/transactions';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionBloc>.value(
      value: context.read<TransactionBloc>(),
      child: const TransactionView(),
    );
  }
}

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state.status != TransactionStatus.loaded) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          appBar: DefaultAppBar(
            elevation: 0,
            title: l10n.transactions,
            trailings: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go('/reports');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xffEEE5FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('See your financial report'),
                      Icon(FontAwesomeIcons.upRightFromSquare),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemBuilder: (_, index) => TransactionTile(
                  transaction: state.transactions[index],
                  onPress: () {},
                ),
                itemCount: state.transactions.length,
              ),
            ],
            // ),
          ),
        );
      },
    );
  }
}
