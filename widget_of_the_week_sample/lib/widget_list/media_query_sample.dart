// https://api.flutter.dev/flutter/widgets/MediaQuery-class.html

import 'package:flutter/material.dart';

class MediaQuerySample extends StatelessWidget {
  const MediaQuerySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // メディアの向き
    final deviceOrientation = MediaQuery.of(context).orientation;
    // ノッチサイズ
    final devicePadding = MediaQuery.of(context).padding;
    // 画面サイズ
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery')),
      body: Center(
        child: Column(
          children: [
            Text('Device Orientation: $deviceOrientation'),
            Text('Device Padding: $devicePadding'),
            Text('Device Size: $deviceSize'),
          ],
        ),
      ),
    );
  }
}
