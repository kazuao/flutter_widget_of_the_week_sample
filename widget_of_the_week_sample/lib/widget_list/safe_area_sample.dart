import 'package:flutter/material.dart';

class SafeAreaSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Safe Area')),
      body: SafeArea(
        // child以外省略可能
        left: true,
        right: true,
        top: true,
        bottom: true,
        minimum: EdgeInsets.zero, // 開始位置
        maintainBottomViewPadding: false, // paddingではなく、viewPaddingを参照するか
        child: ListView(
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
