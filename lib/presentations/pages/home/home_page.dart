import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/transaction/transaction_bloc.dart';
import '../../../constants.dart';
import '../../components/common_components.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopNavigation(),
            LineChartWidget(),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Recent Transaction', style: title3),
            ),
            HomeView(),
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state is TransactionLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TransactionLoaded) {
            if (state.transactions.isEmpty) {
              return const SizedBox(
                height: 180,
                child: Center(
                  child: Text(
                    "You haven't had any transactions",
                  ),
                ),
              );
            } else {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.transactions.length < 5
                    ? state.transactions.length
                    : 5,
                itemBuilder: (_, index) {
                  return TransactionTile(
                    transaction: state.transactions[index],
                  );
                },
              );
            }
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
