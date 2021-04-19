// https://api.flutter.dev/flutter/widgets/TweenAnimationBuilder-class.html

import 'package:flutter/material.dart';

class TweenAnimationBuilderSample extends StatelessWidget {
  const TweenAnimationBuilderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TweenAnimationBuilder')),
      body: Center(
        child: _TweenAnimationBuilderBody(),
      ),
    );
  }
}

class _TweenAnimationBuilderBody extends StatefulWidget {
  _TweenAnimationBuilderBody({Key? key}) : super(key: key);

  @override
  _TweenAnimationBuilderBodyState createState() =>
      _TweenAnimationBuilderBodyState();
}

class _TweenAnimationBuilderBodyState
    extends State<_TweenAnimationBuilderBody> {
  double targetValue = 24;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: const Icon(Icons.aspect_ratio),
      duration: const Duration(seconds: 1),
      tween: Tween<double>(begin: 0, end: targetValue),
      builder: (BuildContext context, double size, Widget? child) {
        return IconButton(
          iconSize: size,
          color: Colors.blue,
          icon: child!,
          onPressed: () {
            setState(() {
              targetValue = targetValue == 24 ? 48 : 24;
            });
          },
        );
      },
    );
  }
}
