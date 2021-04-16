// https://api.flutter.dev/flutter/material/Slider-class.html

import 'package:flutter/material.dart';

class SliderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: _SliderBody(),
    );
  }
}

class _SliderBody extends StatefulWidget {
  @override
  _SliderBodyState createState() => _SliderBodyState();
}

class _SliderBodyState extends State<_SliderBody> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: ((double value) {
        setState(() {
          _currentSliderValue = value;
        });
      }),
    );
  }
}
