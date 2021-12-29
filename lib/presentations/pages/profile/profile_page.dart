import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/blocs/wallet/wallet_bloc.dart';

import '../../../blocs/app_bloc/app_bloc.dart';
import '../../components/squared_icon_card.dart';
import '../home/widgets/widgets.dart';
import 'account/account_page.dart';
import 'export/export_page.dart';
import 'setting/setting_page.dart';
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
                child: const AccountPage(),
              ),
            ),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const SettingPage(),
            ),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ExportPage(),
            ),
          );
          break;
        case 3:
          context.read<AppBloc>().add(const AppLogOutRequested());
          break;
      }
    }

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final user = context.select(
          (AppBloc bloc) {
            if (bloc.state is Authenticated) {
              return (bloc.state as Authenticated).user;
            }
          },
        );
        return Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 8),
                    Avatar(photo: user?.photo),
                    const SizedBox(width: kMediumPadding),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(user?.email ?? '', style: body3),
                          Text(
                            user?.name ?? '',
                            style: title2.copyWith(color: kDark75),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Image.asset('assets/icons/edit.png'),
                      onPressed: () {
                        context.read<AppBloc>().add(const UserChangeAvatar(
                            'https://picsum.photos/200'));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 4,
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
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 1,
                      endIndent: kLargePadding,
                      indent: kLargePadding,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
