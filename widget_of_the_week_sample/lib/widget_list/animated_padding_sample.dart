// https://api.flutter.dev/flutter/widgets/AnimatedPadding-class.html

import 'package:flutter/material.dart';

class AnimatedPaddingSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding')),
      body: _AnimatedPaddingBody(),
    );
  }
}

class _AnimatedPaddingBody extends StatefulWidget {
  @override
  _AnimatedPaddingBodyState createState() => _AnimatedPaddingBodyState();
}

class _AnimatedPaddingBodyState extends State<_AnimatedPaddingBody> {
  double padValue = 0.0;

  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        Text('Padding: $padValue'),
        ElevatedButton(
          child: const Text('Change padding'),
          onPressed: () {
            _updatePadding(padValue == 0.0 ? 100 : 0);
          },
        ),
      ],
    );
  }
}
