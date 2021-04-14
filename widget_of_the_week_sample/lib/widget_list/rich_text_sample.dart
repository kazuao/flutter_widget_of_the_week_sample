// https://api.flutter.dev/flutter/widgets/RichText-class.html

import 'package:flutter/material.dart';

class RichTextSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RichText')),
      body: Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
