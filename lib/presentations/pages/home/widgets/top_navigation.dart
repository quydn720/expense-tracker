import 'package:expense_tracker/blocs/app_bloc/app_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'avatar.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFFFFF6A5),
            Color(0xFFFFF6FF),
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
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Avatar(
                    size: 16,
                    photo: (context.read<AppBloc>().state as Authenticated)
                        .user
                        .photo,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: Center(
                  child: Text(
                    DateFormat(DateFormat.MONTH).format(DateTime.now()),
                    style: body1,
                  ),
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
          const _MoneyAmount(),
          const SizedBox(height: 16),
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
        final _total = context
            .read<WalletBloc>()
            .walletRepository
            .totalAmount
            .toStringAsFixed(1);
        if (state is WalletLoaded) {
          return Text(
            "\$$_total",
            style: title2.copyWith(
              color: kDark75,
              fontSize: 48,
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
