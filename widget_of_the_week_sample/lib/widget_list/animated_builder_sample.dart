import 'dart:math' as math;
import 'package:flutter/material.dart';

class AnimatedBuilderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedBuilder')),
      body: _AnimatedBuilderBody(),
    );
  }
}

class _AnimatedBuilderBody extends StatefulWidget {
  @override
  _AnimatedBuilderBodyState createState() => _AnimatedBuilderBodyState();
}

class _AnimatedBuilderBodyState extends State<_AnimatedBuilderBody>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.green,
        child: const Center(
          child: Text('Whee!'),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}
