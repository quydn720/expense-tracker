import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});
  static const String routeName = '/setting/theme';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(
            ThemeMode.values[index].name.capitalize(),
            style: textStyle,
          ),
          minVerticalPadding: 17,
          trailing: SvgPicture.asset(
            'assets/icons/success.svg',
            color: Theme.of(context).primaryColor,
          ),
        ),
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
