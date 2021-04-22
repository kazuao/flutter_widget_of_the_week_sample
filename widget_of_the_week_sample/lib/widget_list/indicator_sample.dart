// https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html

import 'package:flutter/material.dart';

class IndicatorSample extends StatefulWidget {
  IndicatorSample({Key? key}) : super(key: key);

  @override
  _IndicatorSampleState createState() => _IndicatorSampleState();
}

class _IndicatorSampleState extends State<IndicatorSample>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Indicator')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'progress indicator with a fixed color',
              style: Theme.of(context).textTheme.headline6,
            ),
            CircularProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Linear progress indicator',
            ),
            Divider(
              height: 20, // Dividerが占める高さ
              color: Colors.purple, // 線の色
              thickness: 3, // 線の太さ
              indent: 20, // 始まりの位置
              endIndent: 20, // 終わりの位置
            ),
            LinearProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Lijear progressIndicator',
            )
          ],
        ),
      ),
    );
  }
}
