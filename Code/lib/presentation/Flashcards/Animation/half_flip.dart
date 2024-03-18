import 'dart:math';

import 'package:flutter/material.dart';

class HalfFlipAnimation extends StatefulWidget {
  const HalfFlipAnimation(
      {required this.child,
      required this.animate,
      required this.reset,
      required this.flipFromHalfWay,
      required this.animationCompleted,
      Key? key})
      : super(key: key);

  final Widget child;
  final bool animate;
  final bool reset;
  final bool flipFromHalfWay;
  final VoidCallback animationCompleted;

  @override
  State<HalfFlipAnimation> createState() => _HalfFlipAnimationState();
}

class _HalfFlipAnimationState extends State<HalfFlipAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..addListener(() {
        if (_controller.isCompleted) {
          widget.animationCompleted.call();
        }
      });
    super.initState();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HalfFlipAnimation oldWidget) {
    if (widget.reset) {
      _controller.reset();
    }
    if (widget.animate) {
      _controller.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    double rotationAdjustment = 0;
    if (widget.flipFromHalfWay) {
      rotationAdjustment = pi / 2;
    }
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY((_controller.value * pi) / 2)
            ..rotateY(rotationAdjustment),
          child: widget.child),
    );
  }
}
