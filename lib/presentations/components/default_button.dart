import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' as widgetbook;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../constants.dart';
part 'constants.dart';

@WidgetbookUseCase(name: 'Button', type: AppButton)
Widget appButton(BuildContext context) {
  final icon =
      (context.knobs.boolean(label: 'Icon')) ? const Icon(Icons.abc) : null;
  final onPressed = (context.knobs.boolean(label: 'Enable')) ? () {} : null;

  if (context.knobs.boolean(label: 'Enable')) {
    return AppButton.secondary('Button', icon: icon, onPressed: onPressed);
  } else {
    return AppButton.primary('title', icon: icon, onPressed: onPressed);
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.icon,
    this.isSecondary = false,
    this.isSmall = false,
    this.isGhost = false,
    this.elevation = 4,
  }) : super(key: key);
  final String title;
  final VoidCallback? onPressed;
  final Widget? icon;
  final bool isSecondary;
  final bool isSmall;
  final bool isGhost;
  final double elevation;

  static Widget primary(
    String title, {
    Widget? icon,
    VoidCallback? onPressed,
  }) =>
      AppButton(
        onPressed: onPressed,
        title: title,
        icon: icon,
      );

  static Widget secondary(
    String title, {
    Widget? icon,
    VoidCallback? onPressed,
  }) =>
      AppButton(
        title: title,
        onPressed: onPressed,
        icon: icon,
        isSecondary: true,
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: _mediumPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                // style: isSecondary
                //     ? title3.copyWith(color: kViolet100)
                //     : isGhost
                //         ? title3.copyWith(color: kDark100)
                //         : title3,
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
    Key? key,
    required this.onPress,
    required this.title,
    this.icon,
  }) : super(key: key);
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
