// 参考: https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html

import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterSample extends StatelessWidget {
  const BackdropFilterSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Backdrop Filter')),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Text('0' * 10000),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Color(0).withOpacity(0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
