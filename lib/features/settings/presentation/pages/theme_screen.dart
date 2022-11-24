import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});
  static const String routeName = '/setting/theme';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith();
    final themeMode = context.watch<AppBloc>().state.themeMode;

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.appearance),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final mode = ThemeMode.values[index];
          final isSelected = mode == themeMode;
          return ListTile(
            title: Text(mode.trans(context.l10n), style: textStyle),
            minVerticalPadding: 17,
            trailing: isSelected
                ? Assets.icons.success.svg(
                    color: Theme.of(context).primaryColor,
                  )
                : null,
            onTap: () => context.read<AppBloc>().add(ChangeThemeMode(mode)),
          );
        },
        itemCount: ThemeMode.values.length,
      ),
    );
  }
}

extension ThemeModeStr on ThemeMode {
  String trans(AppLocalizations dict) {
    if (this == ThemeMode.dark) return dict.appearance_dark;
    if (this == ThemeMode.light) return dict.appearance_light;
    return dict.appearance_system;
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
