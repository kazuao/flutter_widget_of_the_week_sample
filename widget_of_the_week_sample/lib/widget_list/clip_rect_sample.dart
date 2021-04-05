// 参考: https://api.flutter.dev/flutter/widgets/ClipRect-class.html

import 'package:flutter/material.dart';

class ClipRectSample extends StatelessWidget {
  const ClipRectSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRect')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset('assets/bb.jpeg'),
                ),
                SizedBox(height: 20),
                ClipOval(
                  child: Image.asset('assets/bb.jpeg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
