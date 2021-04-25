// https://api.flutter.dev/flutter/widgets/RotatedBox-class.html

import 'package:flutter/material.dart';

class RotatedBoxSample extends StatelessWidget {
  const RotatedBoxSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RotatedBox')),
      body: Container(
        child: RotatedBox(
          quarterTurns: 3,
          child: SizedBox(
            height: 40,
            width: 100,
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
