import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../presentations/components/default_app_bar.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});
  static const String routeName = '/setting/security';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Security'),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(
            _securities[index],
            style: textStyle,
          ),
          minVerticalPadding: 17,
          trailing: Assets.icons.success.svg(
            color: Theme.of(context).primaryColor,
          ),
        ),
        itemCount: ThemeMode.values.length,
      ),
    );
  }
}

final _securities = ['PIN', 'Fingerprint', 'Face ID'];
