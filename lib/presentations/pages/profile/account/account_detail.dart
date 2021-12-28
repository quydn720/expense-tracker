import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/components/transaction_tile.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:expense_tracker/utils/extension_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';
import 'package:wallet_repository/wallet_repository.dart';

class WalletDetailPage extends StatelessWidget {
  const WalletDetailPage({Key? key, required Wallet wallet})
      : _wallet = wallet,
        super(key: key);
  final Wallet _wallet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account detail'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight / 3.5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquaredIconCard(imagePath: _wallet.iconPath, size: 60),
                    const SizedBox(height: 8),
                    Text(_wallet.name, style: title3),
                    const SizedBox(height: 4),
                    Text(_wallet.amount.toStringAsFixed(1), style: title2),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.55,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      ...context
                          .read<TransactionBloc>()
                          .transactionRepository
                          .currentTransaction
                          .where((e) => e.walletId == _wallet.id)
                          .toList()
                          .groupBy((trans) => DateTime(
                                trans.date.year,
                                trans.date.month,
                                trans.date.day,
                              ))
                          .entries
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: kMediumPadding,
                                vertical: kDefaultPadding,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.key.onlyDateFormatted,
                                    style: title3,
                                  ),
                                  const SizedBox(height: 8),
                                  ...e.value
                                      .map((e) => TransactionTile(
                                            transaction: e,
                                            canTouch: false,
                                          ))
                                      .toList(),
                                  const Divider(),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
