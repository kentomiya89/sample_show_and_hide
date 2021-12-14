import 'package:flutter/material.dart';

class SquareView extends StatelessWidget {
  const SquareView({
    required this.color,
    this.length = 50,
    this.child,
  });

  final Color color;
  final double length;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: length,
      height: length,
      child: child,
    );
  }
}
