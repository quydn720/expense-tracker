import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultAppBar1 extends StatelessWidget {
  const DefaultAppBar1({
    Key? key,
    required this.height,
    required this.title,
    required this.action,
    this.iconPosition = IconPosition.left,
    this.elevation = 4,
  }) : super(key: key);
  final double height;
  final String title;
  final Widget action;
  final IconPosition iconPosition;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final widgetList = iconPosition == IconPosition.left
        ? <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: action,
            ),
            const SizedBox(width: 10.0),
            Text(
              title,
              style: Theme.of(context).textTheme.headline1,
            )
          ]
        : <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: kMediumPadding),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            action,
          ];
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(kDefaultRadius),
      ),
      elevation: elevation,
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        height: height,
        child: Row(
          mainAxisAlignment: iconPosition == IconPosition.left
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: widgetList,
        ),
      ),
    );
  }
}

enum IconPosition {
  left,
  right,
}
