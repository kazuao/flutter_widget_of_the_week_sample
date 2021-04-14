// https://api.flutter.dev/flutter/widgets/Placeholder-class.html

import 'package:flutter/material.dart';

class PlaceholderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Placeholder')),
      body: Column(
        children: [
          Placeholder(
            fallbackHeight: 132,
            color: Colors.red,
          ),
          SizedBox(
            height: 88,
            child: Row(
              children: [
                Expanded(
                  child: Placeholder(),
                  flex: 1,
                ),
                Expanded(
                  child: Placeholder(),
                  flex: 2,
                ),
              ],
            ),
          ),
          Text('Hello'),
        ],
      ),
    );
  }
}
