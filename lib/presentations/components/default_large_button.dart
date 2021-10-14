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
  }) : super(key: key);
  final String title;
  final VoidCallback onPress;
  final Widget? icon;
  final bool isSecondary;
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 4,
            primary: isSecondary ? kViolet20 : kViolet100,
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
            icon ?? const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style:
                    isSecondary ? title3.copyWith(color: kViolet100) : title3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
