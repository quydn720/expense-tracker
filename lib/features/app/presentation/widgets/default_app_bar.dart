import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    required this.title,
    this.color,
    this.textColor,
    this.elevation,
    this.trailings,
  });

  static const double appBarHeight = 56;
  final String title;
  final Color? color;
  final Color? textColor;
  final double? elevation;
  final List<Widget>? trailings;

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      elevation: elevation,
      actions: trailings,
      title: Text(
        title,
        style: TextStyle(
          color: textColor ?? Theme.of(context).colorScheme.onSurface,
        ),
      ),
      leading: GoRouter.of(context).canPop()
          ? IconButton(
              onPressed: () => context.pop(),
              icon: Assets.icons.arrowLeft.svg(
                height: 32,
                color: textColor ?? Theme.of(context).colorScheme.onSurface,
              ),
            )
          : null,
    );
  }
}
