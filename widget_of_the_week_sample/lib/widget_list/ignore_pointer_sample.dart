// https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html

import 'package:flutter/material.dart';

class IgnorePointerSample extends StatefulWidget {
  IgnorePointerSample({Key? key}) : super(key: key);

  @override
  _IgnorePointerSampleState createState() => _IgnorePointerSampleState();
}

class _IgnorePointerSampleState extends State<IgnorePointerSample> {
  bool ignoring = false;

  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ElevatedButton(
          child: Text(
            ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
          ),
          onPressed: () => setIgnoring(!ignoring),
        ),
      ),
      body: Center(
        child: IgnorePointer(
          ignoring: ignoring,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Ignoring: $ignoring'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
