import 'package:flutter/material.dart';

class FadeTransitionBuilder extends PageTransitionsBuilder {
  /// Construct a [FadeTransitionBuilder].
  const FadeTransitionBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    var opacityTween =
        Tween<double>(begin: 0, end: 1).chain(CurveTween(curve: Curves.ease));
    var opacityAnimation = animation.drive(opacityTween);
    return FadeTransition(
      opacity: opacityAnimation,
      child: child,
    );
  }
}
