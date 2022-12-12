import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const logoutButtonKey = Key('profileScreen_logout_button');
const logoutBottomSheetKey = Key('profileScreen_logout_bottomSheet');
const moveToAccountScreenButtonKey = Key('profileScreen_moveToAccount_button');
const moveToSettingScreenButtonKey = Key('profileScreen_moveToSetting_button');
const moveToExportDataScreenButtonKey =
    Key('profileScreen_moveToExportData_button');
    

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const _UserTile(),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  _ProfileTile(
                    key: moveToAccountScreenButtonKey,
                    iconData: FontAwesomeIcons.wallet,
                    onTap: () => context.go('/profile/account'),
                    title: 'Account',
                  ),
                  const Divider(),
                  _ProfileTile(
                    key: moveToSettingScreenButtonKey,
                    iconData: FontAwesomeIcons.gear,
                    onTap: () => context.push('/setting'),
                    title: 'Settings',
                  ),
                  const Divider(),
                  _ProfileTile(
                    key: moveToExportDataScreenButtonKey,
                    iconData: FontAwesomeIcons.arrowUpFromBracket,
                    onTap: () => context.go('/profile/export-data'),
                    title: 'Export Data',
                  ),
                  const Divider(),
                  _ProfileTile(
                    key: logoutButtonKey,
                    iconData: FontAwesomeIcons.rightFromBracket,
                    onTap: () async {
                      await showModalBottomSheet<bool>(
                        context: context,
                        builder: (_) {
                          return const _LogoutBottomSheet();
                        },
                      );
                    },
                    title: 'Log out',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: display current user info
class _UserTile extends StatelessWidget {
  const _UserTile();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        const CircleAvatar(radius: 40),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '18521313@gm.uit.edu.vn',
                style: textTheme.subtitle1?.copyWith(
                  color: const Color(0xff91919F),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Ngọc Quý',
                style: textTheme.headline3?.copyWith(
                  color: const Color(0xff161719),
                ),
              ),
            ],
          ),
        ),
        IconButton(icon: Assets.icons.edit.image(), onPressed: () {}),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  const _ProfileTile({
    required this.iconData,
    required this.onTap,
    required this.title,
    super.key,
  });

  final IconData iconData;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primary = Theme.of(context).colorScheme.primary;
    final iconColor = primary.withOpacity(0.2);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: iconColor,
              ),
              height: 56,
              width: 56,
              child: Icon(iconData, color: primary),
            ),
            const SizedBox(width: 10),
            Text(title, style: textTheme.bodyText1)
          ],
        ),
      ),
    );
  }
}

class _LogoutBottomSheet extends StatelessWidget {
  const _LogoutBottomSheet();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    void logout() {
      return context.read<AuthenticationBloc>().add(const LogoutRequested());
    }

    return SafeArea(
      key: logoutBottomSheetKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Logout?',
                style: textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Are you sure you want to logout?',
                style: textTheme.bodyLarge?.copyWith(color: Colors.grey),
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
                    onPressed: Navigator.of(context).pop,
                    child: const Text('No'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: logout,
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
