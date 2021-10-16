import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_app_widget.dart';
import 'package:expense_tracker/presentations/components/default_large_button.dart';
import 'package:expense_tracker/presentations/components/icon_card.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static String routeName = '/account';
  final data = const [
    {'img': 'assets/icons/wallet-3.png', 'title': 'Wallet'},
    {'img': 'assets/icons/banks/Chase.png', 'title': 'Chase'},
    {'img': 'assets/icons/banks/Citi.png', 'title': 'Citi'},
    {'img': 'assets/icons/banks/Paypal.png', 'title': 'Paypal'},
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultAppWidget(
      title: 'Account',
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Column(
                children: const [
                  Text('Account Balance', style: body3),
                  SizedBox(height: kDefaultPadding),
                  Text('\$9400', style: title1),
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
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kMediumPadding,
                    vertical: kDefaultPadding,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SquaredIconCard(
                          imagePath: data[index]['img']!,
                          size: 48,
                          color: const Color(0xffF1F1FA),
                          imageColor: (index == 0) ? kBlue100 : null,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: kMediumPadding),
                          child: Text(
                            data[index]['title']!,
                            style: title3.copyWith(color: kDark75),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(thickness: 1),
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
  }
}
