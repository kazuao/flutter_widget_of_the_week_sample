// https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html

import 'package:flutter/material.dart';

class AnimatedOpacitySample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedOpacity')),
      body: _AnimatedOpacityBody(),
    );
  }
}

class _AnimatedOpacityBody extends StatefulWidget {
  @override
  _AnimatedOpacityBodyState createState() => _AnimatedOpacityBodyState();
}

class _AnimatedOpacityBodyState extends State<_AnimatedOpacityBody> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 1),
            child: FlutterLogo(),
          ),
          ElevatedButton(
            child: Text('Fade Logo'),
            onPressed: _changeOpacity,
          ),
        ],
      ),
    );
  }
}
