import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/data/models/model.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});
  static const String routeName = '/setting/language';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.subtitle2?.copyWith();
    final currentLang = context.read<AppBloc>().state.locale;

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.language),
      body: ListView.builder(
        itemCount: LocalizationFactory.supportedLocales.length,
        itemBuilder: (_, index) {
          final language = LocalizationFactory.supportedLocales[index];
          final controller = context.read<AppBloc>();

          return ListTile(
            onTap: () {
              final chosenLanguage = Locale.fromSubtags(
                languageCode: language.languageCode,
              );
              controller.add(ChangeLanguage(chosenLanguage));
            },
            title: Text(
              Locale.fromSubtags(
                languageCode: language.languageCode,
              ).cityLocalizedName(context),
              style: titleStyle,
            ),
            minVerticalPadding: 17,
            trailing: currentLang?.languageCode == language.languageCode
                ? Assets.icons.success.svg(color: theme.primaryColor)
                : const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
