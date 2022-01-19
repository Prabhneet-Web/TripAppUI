import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  const FadeAnimation(this.child);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>( 
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInCirc,
      builder: (context, child, value) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
      child: child,
    );
  }
}
