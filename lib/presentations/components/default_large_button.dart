import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.icon,
    this.isSecondary = false,
    this.isSmall = false,
    this.isGhost = false,
    this.middle,
    this.elevation = 4,
  }) : super(key: key);
  final String title;
  final Widget? middle;
  final VoidCallback onPress;
  final Widget? icon;
  final bool isSecondary;
  final bool isSmall;
  final bool isGhost;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            primary: isSecondary
                ? kViolet20
                : isGhost
                    ? kLight60
                    : kViolet100,
            fixedSize: isSmall ? kSmallButtonSize : kLargeButtonSize,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultRadius),
            ),
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: middle ??
                  Text(
                    title,
                    style: isSecondary
                        ? title3.copyWith(color: kViolet100)
                        : isGhost
                            ? title3.copyWith(color: kDark100)
                            : title3,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
