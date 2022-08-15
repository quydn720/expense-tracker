import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../constants.dart';

@WidgetbookUseCase(name: 'Bar', type: DefaultBar)
Widget barUsecase(BuildContext context) => const DefaultBar(
      title: Text('Default Bar'),
    );

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
                Text(
                  currentSelected ?? '',
                  style: body3.copyWith(color: kDark25),
                ),
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
  final String sectionTitle;
  final String? currentSelected;
  // ignore: overridden_fields, annotate_overrides
  final VoidCallback onTap;
}
