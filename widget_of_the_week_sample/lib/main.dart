import 'package:flutter/material.dart';

import 'import_class.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget of the Week Sample',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BodyApp(),
    );
  }
}

class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget of the Week Sample')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _makeElevatedButton(context, 'Safe Area', SafeAreaSamples()),
              _makeElevatedButton(context, 'Expaded', ExpadedSample()),
              _makeElevatedButton(context, 'Wrap', WrapSample()),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _makeElevatedButton(context, text, nextClass) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextClass),
        );
      },
    );
  }
}