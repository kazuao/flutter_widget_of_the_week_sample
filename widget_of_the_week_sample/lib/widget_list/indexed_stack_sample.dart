// https://api.flutter.dev/flutter/widgets/IndexedStack-class.html

import 'package:flutter/material.dart';

class IndexedStackSample extends StatefulWidget {
  @override
  _IndexedStackSampleState createState() => _IndexedStackSampleState();
}

class _IndexedStackSampleState extends State<IndexedStackSample> {
  int _index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IndexedStack')),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: IndexedStack(
              index: _index,
              children: <Widget>[
                Container(
                  color: Colors.pink,
                  child: Center(
                    child: Text('Page 1'),
                  ),
                ),
                Container(
                  color: Colors.cyan,
                  child: Center(
                    child: Text('Page 2'),
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text('Page 3'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  if (_index <= 0) return;
                  setState(() {
                    _index--;
                  });
                },
                child: Text("Prev"),
              ),
              TextButton(
                onPressed: () {
                  if (_index >= 2) return;
                  setState(() {
                    _index += 1;
                  });
                },
                child: Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
