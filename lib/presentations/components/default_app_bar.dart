import 'package:expense_tracker/size_config.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultAppBar extends AppBar {
  final Widget? middle;
  final Widget? lead;
  final Widget? trail;
  final Color? color;
  DefaultAppBar({
    this.color,
    this.lead,
    this.trail,
    Key? key,
    this.middle,
  }) : super(
          leadingWidth: SizeConfig.screenWidth * 0.4,
          automaticallyImplyLeading: false,
          backgroundColor: color,
          key: key,
          leading: Padding(
            child: Align(
              alignment: Alignment.centerLeft,
              child: lead ?? const SizedBox.shrink(),
            ),
            padding: const EdgeInsets.only(left: kMediumPadding),
          ),
          actions: [trail ?? const SizedBox.shrink()],
          title: middle ?? const SizedBox.shrink(),
        );
}
