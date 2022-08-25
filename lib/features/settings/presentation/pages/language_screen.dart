import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});
  static const String routeName = '/setting/language';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );

    return Scaffold(
      appBar: const DefaultAppBar(title: 'Language'),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(_languages[index]['name']!, style: textStyle),
          minVerticalPadding: 17,
          trailing: Assets.icons.success.svg(
            color: Theme.of(context).primaryColor,
          ),
        ),
        itemCount: _languages.length,
      ),
    );
  }
}

final _languages = [
  {'name': 'English'},
  {'name': 'Vietnamese'},
  {'name': 'Indonesian'},
  {'name': 'Japanese'},
  {'name': 'Russian'},
  {'name': 'Korean'},
];
