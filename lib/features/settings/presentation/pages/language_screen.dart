import 'package:expense_tracker/features/settings/domain/entities/language.dart';
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
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );
    final currentLang = context.read<LocaleController>().locale;

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.language),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final language = Language.supportedLanguages[index];
          final controller = context.read<LocaleController>();
          return ListTile(
            onTap: () {
              final locale = Locale.fromSubtags(
                languageCode: language.languageCode,
              );
              controller.changeLocale(locale);
            },
            title: Text(language.country, style: textStyle),
            minVerticalPadding: 17,
            trailing: currentLang.languageCode == language.languageCode
                ? Assets.icons.success.svg(
                    color: Theme.of(context).primaryColor,
                  )
                : const SizedBox.shrink(),
          );
        },
        itemCount: Language.supportedLanguages.length,
      ),
    );
  }
}
