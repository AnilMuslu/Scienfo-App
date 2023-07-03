import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  GradientBackground({required this.child, this.colors = const [
    Color(0xFFff9315),
    Color(0xFFf88491),
  ]});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}
