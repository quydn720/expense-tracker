import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/common/common_bottom_sheet.dart';
import 'package:expense_tracker/features/user/presentation/bloc/user_bloc.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
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
    final l10n = context.l10n;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const _UserTile(),
            const SizedBox(height: 40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(8),
                child: ListView(
                  children: [
                    _ProfileTile(
                      key: moveToAccountScreenButtonKey,
                      iconData: FontAwesomeIcons.wallet,
                      onTap: () => context.push(
                        '/profile/account',
                        extra: {'title': 'Category'},
                      ),
                      title: l10n.account,
                    ),
                    const Divider(),
                    _ProfileTile(
                      iconData: FontAwesomeIcons.layerGroup,
                      onTap: () => context.push('/category'),
                      title: l10n.category,
                    ),
                    const Divider(),
                    _ProfileTile(
                      key: moveToSettingScreenButtonKey,
                      iconData: FontAwesomeIcons.gear,
                      onTap: () => context.push('/setting'),
                      title: l10n.settings,
                    ),
                    const Divider(),
                    _ProfileTile(
                      key: moveToExportDataScreenButtonKey,
                      iconData: FontAwesomeIcons.arrowUpFromBracket,
                      onTap: () {
                        context.push('/profile/export-data');
                      },
                      title: l10n.exportData,
                    ),
                    const Divider(),
                    _ProfileTile(
                      key: logoutButtonKey,
                      iconData: FontAwesomeIcons.rightFromBracket,
                      onTap: () async {
                        await showModalBottomSheet<bool>(
                          useRootNavigator: true,
                          context: context,
                          builder: (_) {
                            return YesNoBottomSheet(
                              key: logoutBottomSheetKey,
                              confirmCallback: () {
                                context
                                    .read<AuthenticationBloc>()
                                    .add(const LogoutRequested());
                              },
                              subtitle: l10n.logout_confirmation,
                              title: l10n.logout,
                            );
                          },
                        );
                      },
                      title: l10n.logout,
                    ),
                    if (getIt<AppConfigurations>().appName.contains('Dev')) ...[
                      TextButton(
                        onPressed: () {
                          final db = getIt<MyDatabase>();
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (context) => DriftDbViewer(db),
                            ),
                          );
                        },
                        child: const Text('view database'),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return context.watch<UserBloc>().state.map(
          initial: (v) => Container(),
          loaded: (v) {
            return Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(v.user.photo!),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(v.user.name!, style: textTheme.headline2),
                      const SizedBox(height: 8),
                      Text(v.user.email!, style: textTheme.subtitle1),
                    ],
                  ),
                ),
                IconButton(icon: Assets.icons.edit.image(), onPressed: () {}),
              ],
            );
          },
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
