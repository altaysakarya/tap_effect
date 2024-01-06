import 'package:flutter/material.dart';
import 'package:tap_effect/utils/tap_exception.dart';

class AnimatedTap extends StatefulWidget {
  final Duration? duration;
  final Function()? onTap;
  final Widget? child;
  final double minScale;
  const AnimatedTap({
    super.key,
    this.duration,
    this.onTap,
    this.child,
    this.minScale = .9,
  });

  @override
  State<AnimatedTap> createState() => _AnimatedTapState();
}

class _AnimatedTapState extends State<AnimatedTap> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  void init() {
    if (widget.minScale > 1.0 || widget.minScale < 0.0) throw TapMinScaleException();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration ?? const Duration(milliseconds: 200),
      reverseDuration: widget.duration ?? const Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: widget.minScale).animate(_animationController);
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.onTap,
      onTapDown: (value) {
        _animationController.forward();
      },
      onTapUp: (value) {
        _animationController.reverse();
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return ScaleTransition(scale: _animation, child: child);
        },
        child: widget.child,
      ),
    );
  }
}
