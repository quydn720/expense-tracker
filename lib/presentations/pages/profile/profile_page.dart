import 'package:expense_tracker/app/auth/auth_bloc.dart';
import 'package:expense_tracker/app/misc/wallet_bloc.dart';
import 'package:expense_tracker/presentations/components/squared_icon_card.dart';
import 'package:expense_tracker/presentations/pages/authentication/sign_in/sign_in_page.dart';
import 'package:expense_tracker/presentations/pages/profile/account/account_page.dart';
import 'package:expense_tracker/presentations/pages/profile/export/export_page.dart';
import 'package:expense_tracker/presentations/pages/profile/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Body();
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  final data = const [
    {'img': 'assets/icons/wallet-3.png', 'title': 'Account'},
    {'img': 'assets/icons/settings.png', 'title': 'Settings'},
    {'img': 'assets/icons/download.png', 'title': 'Export Data'},
    {'img': 'assets/icons/logout.png', 'title': 'Logout'},
  ];

  @override
  Widget build(BuildContext context) {
    _onNavigate(index) {
      switch (index) {
        case 0:
          Navigator.pushNamed(
            context,
            AccountPage.routeName,
            arguments: context.read<WalletBloc>(),
          );
          break;
        case 1:
          Navigator.pushNamed(context, SettingPage.routeName);
          break;
        case 2:
          Navigator.pushNamed(context, ExportPage.routeName);
          break;
        case 3:
          context.read<AuthBloc>().add(const SignedOut());
          Navigator.pushReplacementNamed(context, SignInPage.routeName);
          break;
      }
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding,
                  ),
                  child: CircleAvatar(radius: 45),
                ),
                const SizedBox(width: kMediumPadding),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Username', style: body3),
                      Text(
                        'Ngoc Quy',
                        style: title2.copyWith(color: kDark75),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Image.asset('assets/icons/edit.png'),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 40),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => _onNavigate(index),
                    child: Padding(
                      padding: const EdgeInsets.all(kMediumPadding),
                      child: Row(
                        children: [
                          SquaredIconCard(
                            imagePath: data[index]['img']!,
                            size: 60,
                            imageColor: index != 3 ? kViolet100 : kRed100,
                            color: index != 3 ? kViolet20 : kRed20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: kMediumPadding),
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
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
