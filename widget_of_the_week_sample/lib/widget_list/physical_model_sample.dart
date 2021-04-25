// https://medium.com/flutterdevs/physicalmodel-widget-in-flutter-6e3cb461f1a8

import 'package:flutter/material.dart';

class PhysicalModelSample extends StatelessWidget {
  const PhysicalModelSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PhysicalModel')),
      body: Center(
        child: PhysicalModel(
          elevation: 12.0,
          shape: BoxShape.circle,
          color: Colors.black,
          shadowColor: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 120,
            width: 120,
          ),
        ),
      ),
    );
  }
}
