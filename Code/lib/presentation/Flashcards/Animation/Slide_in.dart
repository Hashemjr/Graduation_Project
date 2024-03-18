import 'package:chineasy/presentation/Flashcards/Enums/Slide_direction.dart';
import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  const SlideAnimation(
      {this.animate = true,
      required this.direction,
      required this.child,
      Key? key})
      : super(key: key);

  final Widget child;
  final SlideDirection direction;
  final bool animate;

  @override
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    if (widget.animate) {
      _controller.forward();
    }

    super.initState();
  }

  @override
  void didUpdateWidget(covariant SlideAnimation oldWidget) {
    if (widget.animate) {
      _controller.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late final Animation<Offset> _animation;
    Tween<Offset> _tween;

    switch (widget.direction) {
      case SlideDirection.leftAway:
        _tween = Tween<Offset>(begin: Offset(0, 0), end: Offset(-1, 0));
        break;
      case SlideDirection.rightAway:
        _tween = Tween<Offset>(begin: Offset(0, 0), end: Offset(1, 0));
        break;
      case SlideDirection.leftIn:
        _tween = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0));
        break;
      case SlideDirection.rightIn:
        _tween = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
        break;
      case SlideDirection.upIn:
        _tween = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0));
        break;
      case SlideDirection.none:
        _tween = Tween<Offset>(begin: Offset(0, 0), end: Offset(-1, 0));
        break;
    }

    _animation = _tween
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    return SlideTransition(position: _animation, child: widget.child);
  }
}
