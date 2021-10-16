import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';

class DefaultBar extends StatelessWidget {
  const DefaultBar({
    Key? key,
    this.title,
    this.trailing,
    this.color,
    this.height,
    this.onTap,
  }) : super(key: key);

  final Widget? title;
  final Widget? trailing;
  final Color? color;
  final double? height;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        height: height ?? 48,
        width: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title ?? const SizedBox.shrink(),
              trailing ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectionBar extends DefaultBar {
  final String sectionTitle;
  final String? currentSelected;
  final VoidCallback onTap;
  SelectionBar({
    required this.onTap,
    required this.sectionTitle,
    this.currentSelected,
    Key? key,
  }) : super(
          key: key,
          onTap: onTap,
          height: 56,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: Text(
              sectionTitle,
              style: body3.copyWith(fontSize: 16),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Row(
              children: [
                Text(currentSelected ?? '',
                    style: body3.copyWith(color: kDark25)),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Image.asset(
                    'assets/icons/arrow-right-2.png',
                    color: kViolet100,
                  ),
                ),
              ],
            ),
          ),
        );
}
