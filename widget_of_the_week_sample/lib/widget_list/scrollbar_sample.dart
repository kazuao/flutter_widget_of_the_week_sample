// https://api.flutter.dev/flutter/material/Scrollbar-class.html

import 'package:flutter/material.dart';

class ScrollbarSample extends StatelessWidget {
  const ScrollbarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ScrollBar')),
      body: Scrollbar(
        isAlwaysShown: true, // 常に表示するか
        showTrackOnHover: true, // hoverエフェクトを入れるか
        hoverThickness: 100, // hoverのサイズ
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: List.generate(
            100,
            (index) => Text(
              '$index 行目',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
