import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});
  static const String routeName = '/setting/language';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith();
    final currentLang = context.read<LocaleController>().locale;

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.language),
      body: ListView.builder(
        itemCount: LocalizationFactory.supportedLocales.length,
        itemBuilder: (_, index) {
          final language = LocalizationFactory.supportedLocales[index];
          final controller = context.read<LocaleController>();
          return ListTile(
            onTap: () {
              controller.changeLocale(
                Locale.fromSubtags(languageCode: language.languageCode),
              );
            },
            title: Text(
              Locale.fromSubtags(
                languageCode: language.languageCode,
              ).cityLocalizedName(context),
              style: textStyle,
            ),
            minVerticalPadding: 17,
            trailing: currentLang.languageCode == language.languageCode
                ? Assets.icons.success.svg(
                    color: Theme.of(context).primaryColor,
                  )
                : const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
