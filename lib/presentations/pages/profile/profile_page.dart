import 'package:expense_tracker/presentations/components/icon_card.dart';
import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 45),
                const SizedBox(width: kMediumPadding),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Username', style: body3),
                      Text('Ngoc Quy', style: title2.copyWith(color: kDark75)),
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
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(kMediumPadding),
                    child: Row(
                      children: [
                        SquaredIconCard(
                          imagePath: data[index]['img']!,
                          height: 60,
                          imageColor: index != 3 ? kViolet100 : kRed100,
                          color: index != 3 ? kViolet20 : kRed20,
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
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Column(
//   children: const [
//     ListTile(
//       leading: SquaredIconCard(
//         imagePath: 'assets/icons/wallet-3.png',
//         height: 60,
//         imageColor: kViolet100,
//         color: kViolet20,
//       ),
//       title: Text('Account'),
//     ),
//     ListTile(
//       leading: SquaredIconCard(
//         imagePath: 'assets/icons/wallet-3.png',
//         height: 60,
//         imageColor: kViolet100,
//         color: kViolet20,
//       ),
//       title: Text('Account'),
//     ),
//     ListTile(
//       leading: SquaredIconCard(
//         imagePath: 'assets/icons/wallet-3.png',
//         height: 60,
//         imageColor: kViolet100,
//         color: kViolet20,
//       ),
//       title: Text('Account'),
//     ),
//     ListTile(
//       leading: SquaredIconCard(
//         imagePath: 'assets/icons/wallet-3.png',
//         height: 60,
//         imageColor: kViolet100,
//         color: kViolet20,
//       ),
//       title: Text('Account'),
//     ),
//   ],
// ),
