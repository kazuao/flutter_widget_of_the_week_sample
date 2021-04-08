// https://api.flutter.dev/flutter/widgets/ValueListenableBuilder-class.html

import 'package:flutter/material.dart';

class ValueListenableBuilderSample extends StatefulWidget {
  ValueListenableBuilderSample({
    Key? key,
  }) : super(key: key);

  @override
  _ValueListenableBuilderSampleState createState() =>
      _ValueListenableBuilderSampleState();
}

class _ValueListenableBuilderSampleState
    extends State<ValueListenableBuilderSample> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final Widget goodJob = const Text('Good Job!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValueListenableBuilder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            ValueListenableBuilder(
              valueListenable: _counter,
              child: goodJob,
              builder: (BuildContext context, int value, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('$value'),
                    child!,
                  ],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () => _counter.value++,
      ),
    );
  }
}
