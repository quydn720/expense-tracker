import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/data/models/model.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/notification_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/security_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/theme_screen.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.read<AppBloc>().state.locale;

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.settings),
      body: ListView(
        children: [
          _SettingTile(
            key: const Key('settingScreen_currencyTile_button'),
            title: context.l10n.currency,
            value: 'USD',
            onTap: () => context.push(CurrencyScreen.routeName),
          ),
          _SettingTile(
            key: const Key('settingScreen_languageTile_button'),
            title: context.l10n.language,
            value: currentLocale?.cityLocalizedName(context.l10n),
            onTap: () => context.push(LanguageScreen.routeName),
          ),
          _SettingTile(
            key: const Key('settingScreen_themeModeTile_button'),
            title: context.l10n.appearance,
            value: context.read<AppBloc>().state.themeMode.trans(context.l10n),
            onTap: () => context.push(ThemeScreen.routeName),
          ),
          _SettingTile(
            key: const Key('settingScreen_securityTile_button'),
            title: context.l10n.security,
            onTap: () => context.push(SecurityScreen.routeName),
          ),
          _SettingTile(
            key: const Key('settingScreen_notificationTile_button'),
            title: context.l10n.notification,
            onTap: () => context.push(NotificationScreen.routeName),
          ),
          const SizedBox(height: 32),
          _SettingTile(
            title: context.l10n.about,
            // onTap: () => context.push(CurrencyScreen.routeName),
          ),
          _SettingTile(
            title: context.l10n.help,
            // onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  const _SettingTile({required this.title, this.value, this.onTap, super.key});
  final String title;
  final String? value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final titleTextStyle = textTheme.bodyText1;
    final valueTextStyle = textTheme.subtitle2?.copyWith(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );

    return ListTile(
      title: Text(title, style: titleTextStyle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value ?? '', style: valueTextStyle),
          const SizedBox(width: 4),
          Assets.icons.arrowRight2.svg(
            width: 24,
            height: 24,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
      minVerticalPadding: 16,
      onTap: onTap,
    );
  }
}
