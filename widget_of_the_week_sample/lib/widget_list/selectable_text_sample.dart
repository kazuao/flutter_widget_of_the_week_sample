// https://master-api.flutter.dev/flutter/material/SelectableText-class.html

import 'package:flutter/material.dart';

class SelectableTextSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SelectableText')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SelectableText(
                'Hello! How are you?',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SelectableText.rich(
                TextSpan(
                  text: 'Hello',
                  children: [
                    TextSpan(
                        text: ' beautiful',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'world',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
