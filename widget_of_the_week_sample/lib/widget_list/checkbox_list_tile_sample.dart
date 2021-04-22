// https://api.flutter.dev/flutter/material/CheckboxListTile-class.html

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class CheckboxListTileSample extends StatelessWidget {
  const CheckboxListTileSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckboxListTile')),
      body: Center(
        child: _ChecboxBody(),
      ),
    );
  }
}

class _ChecboxBody extends StatefulWidget {
  _ChecboxBody({Key? key}) : super(key: key);

  @override
  _ChecboxBodyState createState() => _ChecboxBodyState();
}

class _ChecboxBodyState extends State<_ChecboxBody> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Animate Slowly'),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 10 : 1;
        });
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}
