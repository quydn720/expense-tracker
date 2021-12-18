import '../../constants.dart';
import 'package:flutter/material.dart';

import 'default_app_bar.dart';

/// Default scaffold widget with [DefaultAppBar]
///
class DefaultAppWidget extends StatelessWidget {
  const DefaultAppWidget({
    Key? key,
    this.color,
    required this.title,
    this.body,
    this.trail,
  }) : super(key: key);
  final Color? color;
  final String title;
  final Widget? body;
  final Widget? trail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        color: color,
        lead: GestureDetector(
          child: Image.asset('assets/icons/arrow-left.png', color: kDark100),
          onTap: () => Navigator.pop(context),
        ),
        middle: Text(title, style: title3.copyWith(color: kDark100)),
        trail: trail,
      ),
      body: body,
    );
  }
}
