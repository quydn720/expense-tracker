import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transaction_repository/transaction_repository.dart';

import 'components/pills.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/daily_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            _TopNavigation(),
            _LineChartWidget(),
            HomeView(),
          ],
        ),
      ),
    );
  }
}

class _LineChartWidget extends StatelessWidget {
  const _LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Spend frequency', style: title3),
        ),
        SizedBox(
          height: 180,
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              if (state is TransactionLoaded) {
                final dailyTotal = context
                    .read<TransactionBloc>()
                    .transactionRepository
                    .mapDateTransaction
                    .map(
                      (key, value) => MapEntry(
                        key,
                        value
                            .map((e) => e.amount)
                            .toList()
                            .reduce((a, b) => a + b),
                      ),
                    );
                final spots = dailyTotal.entries
                    .map((e) => FlSpot(e.key.day.toDouble(), e.value))
                    .toList();
                return LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    minX: spots.map((e) => e.x).reduce((a, b) => a < b ? a : b),
                    maxX: spots.map((e) => e.x).reduce((a, b) => a > b ? a : b),
                    minY: 0,
                    maxY:
                        dailyTotal.values.reduce((c, n) => c > n ? c : n) + 15,
                    lineBarsData: [
                      LineChartBarData(
                        spots: spots,
                        isCurved: false,
                        colors: [kViolet100],
                        barWidth: 5,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                            show: false, checkToShowDot: (spot, data) => false),
                        belowBarData: BarAreaData(
                          show: true,
                          colors: [kViolet100]
                              .map((color) => color.withOpacity(0.2))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ],
    );
  }
}

class _TopNavigation extends StatelessWidget {
  const _TopNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFFFFF6E5),
            Color(0xFFF8EDD8),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(kLargeRadius),
          bottomRight: Radius.circular(kLargeRadius),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: CircleAvatar(),
                ),
              ),
              ExpandedPill(
                onTap: () {},
                label: Text(
                  'October',
                  style: body3.copyWith(color: kDark100),
                ),
              ),
              IconButton(
                icon: Image.asset(
                  'assets/icons/notifiaction.png',
                  color: kViolet100,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            'Account Balance',
            style: body1.copyWith(color: kDark50),
          ),
          const _MoneyAmount()
        ],
      ),
    );
  }
}

class _MoneyAmount extends StatelessWidget {
  const _MoneyAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        final _total =
            context.read<WalletBloc>().walletRepository.totalAmount.toString();
        if (state is WalletLoaded) {
          return Text(
            _total.toString(),
            style: title2.copyWith(
              color: kDark75,
              fontSize: 48,
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state is TransactionLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TransactionLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Recent Transaction', style: title3),
                ),
                Column(
                  children: state.transactions
                      .map((t) => TransactionTile(transaction: t))
                      .toList(),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 2,
        child: ListTile(
          tileColor: kLight80,
          leading: const SquaredIconCard(
            size: 60,
            color: kYellow20,
            imagePath: 'assets/icons/shopping-bag.png',
            imageColor: kYellow100,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction.category,
                  overflow: TextOverflow.ellipsis,
                  style: body2,
                ),
              ),
              FittedBox(
                child: Text(
                  transaction.amount.toString(),
                  style: body2.copyWith(
                    color: transaction.type == TransactionType.income
                        ? kGreen100
                        : kRed100,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  transaction.description,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  transaction.date.toString(),
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
      onLongPress: () {
        context.read<TransactionBloc>().add(DeleteTransactions(transaction));
        // context.read<WalletBloc>().add(UpdateWallet(transaction.wallet));
      },
    );
  }
}
