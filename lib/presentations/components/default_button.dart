import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
    this.isSecondary = false,
    this.isSmall = false,
    this.isGhost = false,
    this.middle,
    this.elevation = 4,
  });
  final String title;
  final Widget? middle;
  final VoidCallback? onPressed;
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
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
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

class DefaultOutlinedButton extends StatelessWidget {
  const DefaultOutlinedButton({
    super.key,
    required this.onPress,
    required this.title,
    this.icon,
  });
  final VoidCallback onPress;
  final Widget? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: const Color(0xffF1F1FA),
            fixedSize: kLargeButtonSize,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultRadius),
            ),
          ),
        ),
      ),
      child: OutlinedButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                style: title3.copyWith(color: kDark100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
