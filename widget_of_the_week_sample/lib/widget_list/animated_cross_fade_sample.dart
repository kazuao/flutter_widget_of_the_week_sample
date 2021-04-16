// https://github.com/mono0926/flutter-animations/blob/master/lib/pages/implicitly_animated/animated_cross_fade.dart

import 'package:flutter/material.dart';

class AnimatedCrossFadeSample extends StatefulWidget {
  @override
  _AnimatedCrossFadeSampleState createState() =>
      _AnimatedCrossFadeSampleState();
}

class _AnimatedCrossFadeSampleState extends State<AnimatedCrossFadeSample> {
  bool _showFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedCrossFade')),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: FlutterLogo(),
          secondChild: Image.network(
              'https://wired.jp/app/uploads/2018/01/GettyImages-522585140_w1920.webp'),
          crossFadeState:
              _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            _showFirst = !_showFirst;
          });
        }),
      ),
    );
  }
}
