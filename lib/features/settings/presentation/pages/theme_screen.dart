import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});
  static const String routeName = '/setting/theme';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith();
    final themeMode = context.watch<ThemeController>().themeMode;

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.theme),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final mode = ThemeMode.values[index];
          final isSelected = mode == themeMode;
          return ListTile(
            title: Text(
              mode.name.capitalize(),
              style: textStyle,
            ),
            minVerticalPadding: 17,
            trailing: isSelected
                ? Assets.icons.success.svg(
                    color: Theme.of(context).primaryColor,
                  )
                : null,
            onTap: () => context.read<ThemeController>().changeThemeMode(mode),
          );
        },
        itemCount: ThemeMode.values.length,
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
