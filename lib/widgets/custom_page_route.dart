import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final String direction;

  CustomPageRoute({
    required this.child,
    required this.direction,
  }) : super(
          transitionDuration: const Duration(milliseconds: 350),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      SlideTransition(
        position: Tween<Offset>(
          begin:
              (direction == 'left') ? const Offset(1, 0) : const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}
