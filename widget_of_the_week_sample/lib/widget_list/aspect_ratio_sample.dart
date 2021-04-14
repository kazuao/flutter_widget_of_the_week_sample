// https://api.flutter.dev/flutter/widgets/AspectRatio-class.html

import 'package:flutter/material.dart';

class AspectRatioSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRacio')),
      body: _AspectRatioBody(),
    );
  }
}

class _AspectRatioBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
