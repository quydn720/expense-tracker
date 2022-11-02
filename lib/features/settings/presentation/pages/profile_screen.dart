import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import '../../../../presentations/components/squared_icon_card.dart';
import '../../../app/bloc/app_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  List<Map<String, String>> get data => const [
        {'img': 'assets/icons/wallet-3.png', 'title': 'Account'},
        {'img': 'assets/icons/settings.png', 'title': 'Settings'},
        {'img': 'assets/icons/download.png', 'title': 'Export Data'},
        {'img': 'assets/icons/logout.png', 'title': 'Logout'},
      ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => showModalBottomSheet<String>(
                  context: context,
                  builder: (context) => const BottomSheetWidget(),
                ),
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
                        padding: const EdgeInsets.only(left: kMediumPadding),
                        child: Text(data[index]['title']!),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) => const Divider(thickness: 1),
          ),
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Logout?',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Are you sure you want to logout?',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEEE5FF),
                      foregroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('No'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => context.read<AppBloc>().add(
                          const LogoutRequested(),
                        ),
                    child: const Text('Yes'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
