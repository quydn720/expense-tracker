import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(_languages[index]['name']!, style: textStyle),
          minVerticalPadding: 17,
          trailing: SvgPicture.asset(
            'assets/icons/success.svg',
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
