import 'package:flutter/material.dart';

class FadeInAnimation extends StatefulWidget {
  const FadeInAnimation({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  State<FadeInAnimation> createState() => FadeInAnimationState();
}

class FadeInAnimationState extends State<FadeInAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation, _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 800), vsync: this);

    _scaleAnimation = Tween<double>(begin: 0.90, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine));

    _opacityAnimation = Tween<double>(begin: 0.50, end: 1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Opacity(
            opacity: _opacityAnimation.value,
            child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(_scaleAnimation.value),
                child: widget.child)));
  }
}
