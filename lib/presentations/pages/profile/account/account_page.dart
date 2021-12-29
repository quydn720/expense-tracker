import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/presentations/pages/profile/account/add_new_account.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_repository/wallet_repository.dart';

import '../../../../blocs/wallet/wallet_bloc.dart';
import '../../../../constants.dart';
import '../../../components/default_button.dart';
import '../../../components/squared_icon_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'account_detail.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: const [
          _StackImageAmount(),
          Divider(),
          _WalletList(),
          _AddNewWalletButton(),
        ],
      ),
    );
  }
}

class _WalletList extends StatelessWidget {
  const _WalletList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _wallets = context.read<WalletBloc>().walletRepository.currentWallets;
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        final _wallets = (state as WalletLoaded).wallets;
        return Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: _wallets.length,
            itemBuilder: (context, index) {
              final wallet = _wallets[index];
              return WalletTile(wallet: wallet);
            },
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              endIndent: kLargePadding,
              indent: kLargePadding,
            ),
          ),
        );
      },
    );
  }
}

class WalletTile extends StatelessWidget {
  const WalletTile({
    Key? key,
    required Wallet wallet,
  })  : _wallet = wallet,
        super(key: key);
  final Wallet _wallet;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: context.read<WalletBloc>(),
                  ),
                  BlocProvider.value(
                    value: context.read<TransactionBloc>(),
                  ),
                ],
                child: WalletDetailPage(wallet: _wallet),
              ),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMediumPadding,
          vertical: kDefaultPadding,
        ),
        child: Row(
          children: [
            SquaredIconCard(
              imagePath: _wallet.iconPath.toString().replaceAll('\'', ''),
              size: 48,
              color: const Color(0xffF1F1FA),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: kMediumPadding),
                child: Text(
                  _wallet.name,
                  style: title3.copyWith(color: kDark75),
                ),
              ),
            ),
            Text(
              '\$ ${_wallet.amount.toStringAsFixed(1)}',
              style: title3.copyWith(color: kDark75),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddNewWalletButton extends StatelessWidget {
  const _AddNewWalletButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: DefaultButton(
        key: const Key('accountPage_addNewWallet_button'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNewWalletPage()),
          );
        },
        title: '+  Add new wallet',
      ),
    );
  }
}

class _StackImageAmount extends StatelessWidget {
  const _StackImageAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _total = context.read<WalletBloc>().walletRepository.totalAmount;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Column(
          children: [
            const Text('Account Balance', style: body3),
            const SizedBox(height: kDefaultPadding),
            Text(
              _total.toStringAsFixed(1),
              style: title1,
            ),
          ],
        ),
        Image.asset(
          'assets/images/BG.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ],
    );
  }
}
