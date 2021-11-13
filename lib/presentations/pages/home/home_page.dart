import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
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
          children: [
            Container(
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
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: HomeView(),
            ),
          ],
        ),
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
    final _total =
        context.read<WalletBloc>().walletRepository.totalAmount.toString();
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
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
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TransactionLoaded) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
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
      onLongPress: () => context.read<TransactionBloc>().add(
            DeleteTransactions(transaction),
          ),
    );
  }
}
