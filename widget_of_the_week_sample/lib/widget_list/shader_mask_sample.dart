// https://api.flutter.dev/flutter/widgets/ShaderMask-class.html

import 'package:flutter/material.dart';

class ShaderMaskSample extends StatelessWidget {
  const ShaderMaskSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShaderMask')),
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 1.0,
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Text(
            'I’m burning the memories',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
