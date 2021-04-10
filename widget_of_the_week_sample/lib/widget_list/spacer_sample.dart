// https://api.flutter.dev/flutter/widgets/Spacer-class.html

import 'package:flutter/material.dart';

class SpacerSample extends StatelessWidget {
  const SpacerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spacer')),
      body: Center(
        child: Row(
          children: [
            Text('Begin'),
            Spacer(),
            Text('Middle'),
            Spacer(flex: 2),
            Text('End'),
          ],
        ),
      ),
    );
  }
}
