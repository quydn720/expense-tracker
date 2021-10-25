import 'package:expense_tracker/app/misc/wallet_bloc.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_app_widget.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    final bloc = ModalRoute.of(context)!.settings.arguments as WalletBloc;
    return bloc.state.maybeMap(
      loadSuccess: (state) {
        return DefaultAppWidget(
          title: 'Account',
          body: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    children: [
                      const Text('Account Balance', style: body3),
                      const SizedBox(height: kDefaultPadding),
                      Text(
                        // TODO: To a logic part - bloc
                        state.wallets
                            .map((e) => e.amount.getOrCrash())
                            .toList()
                            .reduce((a, b) => a + b)
                            .toString(),
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
              ),
              const Divider(),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: state.wallets.length,
                  itemBuilder: (context, index) {
                    final wallet = state.wallets[index];
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
                              imagePath: wallet.imagePath
                                  .toString()
                                  .replaceAll('\'', ''),
                              size: 48,
                              color: const Color(0xffF1F1FA),
                              imageColor: kBlue100,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: kMediumPadding),
                                child: Text(
                                  wallet.name.getOrCrash(),
                                  style: title3.copyWith(color: kDark75),
                                ),
                              ),
                            ),
                            Text(
                              '\$ ${wallet.amount.getOrCrash()}',
                              style: title3.copyWith(color: kDark75),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(thickness: 1),
                ),
              ),
              Container(
                color: kLight100,
                child: Padding(
                  padding: const EdgeInsets.all(kMediumPadding),
                  child: DefaultButton(
                    onPress: () {},
                    title: '+  Add new wallet',
                  ),
                ),
              ),
            ],
          ),
        );
      },
      orElse: () => const Text('Not handle yet'),
    );
  }
}
