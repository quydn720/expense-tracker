import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key, required this.title});

  static const double appBarHeight = 56;
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
      ),
    );
  }
}
// }
// class DefaultAppBar extends AppBar {
//   DefaultAppBar({
//     this.color,
//     this.lead,
//     this.trail,
//     super.key,
//     this.middle,
//   }) : super(
//           // leadingWidth: SizeConfig.screenWidth * 0.4,
//           // automaticallyImplyLeading: false,
//           backgroundColor: color,
//           leading: lead ?? const SizedBox.shrink(),
//           actions: [trail ?? const SizedBox.shrink()],
//           title: middle ?? const SizedBox.shrink(),
//         );
//   final Widget? middle;
//   final Widget? lead;
//   final Widget? trail;
//   final Color? color;
// }
