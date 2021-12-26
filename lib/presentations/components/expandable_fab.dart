// import 'package:flutter/material.dart';

// class ExpanableFloatingActionButton extends StatefulWidget {
//   const ExpanableFloatingActionButton({
//     Key? key,
//     this.initialOpen,
//     required this.distance,
//     required this.children,
//   }) : super(key: key);

//   final bool? initialOpen;
//   final double distance;
//   final List<Widget> children;
//   @override
//   _ExpanableFloatingActionButtonState createState() =>
//       _ExpanableFloatingActionButtonState();
// }

// class _ExpanableFloatingActionButtonState
//     extends State<ExpanableFloatingActionButton>
//     with SingleTickerProviderStateMixin {
//   bool _open = false;
//   late final AnimationController _animationController;
//   late final Animation<double> _expandAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _open = widget.initialOpen ?? false;
//     _animationController = AnimationController(
//       value: _open ? 1.0 : 0.0,
//       duration: const Duration(milliseconds: 250),
//       vsync: this,
//     );
//     _expandAnimation = CurvedAnimation(
//       curve: Curves.fastOutSlowIn,
//       reverseCurve: Curves.easeOutQuad,
//       parent: _animationController,
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _animationController.dispose();
//   }

//   void _toggle() {
//     setState(() {
//       _open = !_open;
//       if (_open) {
//         _animationController.forward();
//       } else {
//         _animationController.reverse();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox.expand(
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         clipBehavior: Clip.antiAlias,
//         children: [
//           _buildTapToOpenFab(),
//           ..._buildExpandingActionButtons(),
//           _buildTapToCloseFab(),
//         ],
//       ),
//     );
//   }

//   List<Widget> _buildExpandingActionButtons() {
//     final children = <Widget>[];
//     final count = widget.children.length;
//     final step = 90.0 / (count - 1);
//     for (var i = 0, angleInDegrees = 0.0;
//         i < count;
//         i++, angleInDegrees += step) {
//       children.add(
//         _ExpandingActionButton(
//           directionInDegrees: angleInDegrees,
//           maxDistance: widget.distance,
//           progress: _expandAnimation,
//           child: widget.children[i],
//         ),
//       );
//     }
//     return children;
//   }

//   Widget _buildTapToOpenFab() {
//     return SizedBox(
//       width: 56.0,
//       height: 56.0,
//       child: Center(
//         child: Material(
//           shape: const CircleBorder(),
//           clipBehavior: Clip.antiAlias,
//           elevation: 4.0,
//           child: InkWell(
//             onTap: _toggle,
//             child: Icon(
//               Icons.close,
//               color: Theme.of(context).primaryColor,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTapToCloseFab() {
//     return IgnorePointer(
//       ignoring: _open,
//       child: AnimatedContainer(
//         transformAlignment: Alignment.center,
//         transform: Matrix4.diagonal3Values(
//           _open ? 0.7 : 1.0,
//           _open ? 0.7 : 1.0,
//           1.0,
//         ),
//         duration: const Duration(milliseconds: 250),
//         curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
//         child: AnimatedOpacity(
//           opacity: _open ? 0.0 : 1.0,
//           curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
//           duration: const Duration(milliseconds: 250),
//           child: FloatingActionButton(
//             onPressed: _toggle,
//             child: const Icon(Icons.create),
//           ),
//         ),
//       ),
//     );
//   }
// }

// @immutable
// class ActionButton extends StatelessWidget {
//   const ActionButton({
//     Key? key,
//     this.onPressed,
//     required this.icon,
//   }) : super(key: key);

//   final VoidCallback? onPressed;
//   final Widget icon;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Material(
//       shape: const CircleBorder(),
//       clipBehavior: Clip.antiAlias,
//       color: theme.colorScheme.secondary,
//       elevation: 4.0,
//       child: IconTheme.merge(
//         data: theme.primaryIconTheme,
//         child: IconButton(
//           onPressed: onPressed,
//           icon: icon,
//         ),
//       ),
//     );
//   }
// }

// @immutable
// class _ExpandingActionButton extends StatelessWidget {
//   _ExpandingActionButton({
//     Key? key,
//     required this.directionInDegrees,
//     required this.maxDistance,
//     required this.progress,
//     required this.child,
//   }) : super(key: key);

//   final double directionInDegrees;
//   final double maxDistance;
//   final Animation<double> progress;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: progress,
//       builder: (BuildContext context, Widget? child) {
//         final offset = Offset.fromDirection(
//           directionInDegrees * (3.14 / 180.0),
//           progress.value * maxDistance,
//         );
//         return Align(
//           alignment: Alignment.center,
//           child: Transform.rotate(
//             angle: (1.0 - progress.value) * 3.14 / 2,
//             child: child!,
//           ),
//         );
//       },
//       child: FadeTransition(
//         opacity: progress,
//         child: child,
//       ),
//     );
//   }
// }
