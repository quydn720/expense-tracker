import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../../presentations/components/common_components.dart';
import '../bloc/transaction_bloc.dart';

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
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionsInitial) {
          return const Text('Initital');
        }
        if (state is TransactionsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        final transactionsSuccess = state as LoadTransactionsSuccess;
        return Scaffold(
          appBar: DefaultAppBar(
            elevation: 0,
            title: 'Transactions',
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
                itemBuilder: (context, index) => TransactionDateGroupView(
                  transactionDateGroup:
                      TransactionDateGroup.fromTransactionList(),
                ),
                itemCount: transactionsSuccess.transactions.length,
              ),
            ],
            // ),
          ),
        );
      },
    );
  }
}

class TransactionDateGroupView extends StatelessWidget {
  const TransactionDateGroupView({
    super.key,
    required this.transactionDateGroup,
  });
  final TransactionDateGroup transactionDateGroup;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            transactionDateGroup.date,
            style: Theme.of(context).textTheme.button,
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => TransactionTile(
            transaction: transactionDateGroup.transactions[index],
            onLongPress: () {},
            onPress: () {},
          ),
          itemCount: transactionDateGroup.transactions.length,
        ),
      ],
    );
  }
}

class TransactionDateGroup {
  const TransactionDateGroup({required this.date, required this.transactions});

  factory TransactionDateGroup.fromTransactionList() {
    return TransactionDateGroup(
      date: DateFormat.yMMMd().format(DateTime.now()),
      transactions: [
        Transaction.empty(),
        Transaction.empty(),
        Transaction.empty(),
      ],
    );
  }

  final String date;
  final List<Transaction> transactions;
}
