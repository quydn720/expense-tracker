import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({
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
