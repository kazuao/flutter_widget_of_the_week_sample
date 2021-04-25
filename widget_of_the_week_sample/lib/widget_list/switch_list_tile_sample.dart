// https://api.flutter.dev/flutter/material/SwitchListTile-class.html

import 'package:flutter/material.dart';

class SwitchListTileSample extends StatelessWidget {
  const SwitchListTileSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SwitchListTile')),
      body: _SwitchBody(),
    );
  }
}

class _SwitchBody extends StatefulWidget {
  _SwitchBody({Key? key}) : super(key: key);

  @override
  __SwitchBodyState createState() => __SwitchBodyState();
}

class __SwitchBodyState extends State<_SwitchBody> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: const Text('Lights'),
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
        secondary: const Icon(Icons.lightbulb_outline),
      ),
    );
  }
}
