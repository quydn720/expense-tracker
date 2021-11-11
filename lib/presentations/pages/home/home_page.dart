import 'package:flutter/material.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/daily_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TransactionLoaded) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                title: const Text('Home'),
              ),
              Column(
                children: state.transactions.map(
                  (e) {
                    return GestureDetector(
                      child: Text(e.category),
                      onLongPress: () => context.read<TransactionBloc>().add(
                            DeleteTransactions(e),
                          ),
                    );
                  },
                ).toList(),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
