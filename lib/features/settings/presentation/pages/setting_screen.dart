import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/notification_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/security_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/theme_screen.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/bloc/app_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.read<LocaleController>().locale;

    return Scaffold(
      body: ListView(
        children: [
          _SettingTile(
            title: context.l10n.currency,
            value: 'USD',
            onTap: () => context.go(CurrencyScreen.routeName),
          ),
          _SettingTile(
            title: context.l10n.language,
            value: currentLocale.cityLocalizedName(context),
            onTap: () => context.go(LanguageScreen.routeName),
          ),
          _SettingTile(
            title: context.l10n.theme,
            value: 'Dark',
            onTap: () => context.go(ThemeScreen.routeName),
          ),
          _SettingTile(
            title: context.l10n.security,
            onTap: () => context.go(SecurityScreen.routeName),
          ),
          _SettingTile(
            title: context.l10n.notification,
            onTap: () => context.go(NotificationScreen.routeName),
          ),
          const SizedBox(height: 32),
          _SettingTile(
            title: context.l10n.about,
            onTap: () => context.go(CurrencyScreen.routeName),
          ),
          _SettingTile(
            title: context.l10n.help,
            onTap: () => getIt<AppBloc>().add(const LogoutRequested()),
          ),
        ],
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  const _SettingTile({required this.title, this.value, this.onTap});
  final String title;
  final String? value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.bodyText1;
    final valueTextStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
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
