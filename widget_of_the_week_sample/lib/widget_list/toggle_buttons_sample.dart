// https://www.woolha.com/tutorials/flutter-using-togglebuttons-widget-examples

import 'package:flutter/material.dart';

class ToggleButtonsSample extends StatefulWidget {
  @override
  _ToggleButtonsSampleState createState() => _ToggleButtonsSampleState();
}

class _ToggleButtonsSampleState extends State<ToggleButtonsSample> {
  List<bool> _isSelected = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToggleButtons')),
      body: Center(
        child: ToggleButtons(
          children: [
            Icon(Icons.bluetooth),
            Icon(Icons.wifi),
            Icon(Icons.flash_on),
          ],
          isSelected: _isSelected,
          onPressed: (int index) {
            setState(() {
              _isSelected[index] = !_isSelected[index];
            });
          },
          color: Colors.grey,
          selectedColor: Colors.red,
          fillColor: Colors.lightBlueAccent,
          borderColor: Colors.lightBlueAccent,
          selectedBorderColor: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
