import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
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
    final _wallets = context.read<WalletBloc>().walletRepository.currentWallets;
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: _wallets.length,
        itemBuilder: (context, index) {
          final wallet = _wallets[index];
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kMediumPadding,
                vertical: kDefaultPadding,
              ),
              child: Row(
                children: [
                  SquaredIconCard(
                    imagePath: wallet.iconPath.toString().replaceAll('\'', ''),
                    size: 48,
                    color: const Color(0xffF1F1FA),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: kMediumPadding),
                      child: Text(
                        wallet.name,
                        style: title3.copyWith(color: kDark75),
                      ),
                    ),
                  ),
                  Text(
                    '\$ ${wallet.amount}',
                    style: title3.copyWith(color: kDark75),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          endIndent: kLargePadding,
          indent: kLargePadding,
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
        onPressed: () {},
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
              _total.toString(),
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
