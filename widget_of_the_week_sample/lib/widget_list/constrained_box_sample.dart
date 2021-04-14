// https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html

import 'package:flutter/material.dart';

class ConstrainedBoxSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConstrainedBox')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: const Card(child: Text('Hellow World!')),
        ),
      ),
    );
  }
}
