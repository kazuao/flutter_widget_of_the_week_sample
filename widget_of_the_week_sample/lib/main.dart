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
              _makeElevatedButton(context, 'Animated', AnimatedController()),
              _makeElevatedButton(context, 'Opacity', OpacitySample()),
              _makeElevatedButton(
                  context, 'Future Builder', FutureBuilderSample()),
              // _makeElevatedButton(
              //     context, 'Fade Transition', FadeTransitionSample()),
              _makeElevatedButton(context, 'Floating Action Button',
                  FloatingActionButtonSample()),
              _makeElevatedButton(context, 'Page View', PageViewSample()),
              _makeElevatedButton(context, 'Table', TableSample()),
              _makeElevatedButton(context, 'SliverAppBar', SliverSample()),
              _makeElevatedButton(context, 'Fadein Image', FadeInImageSample()),
              _makeElevatedButton(
                  context, 'StreamBuilder', StreamBuilderSample()),
              _makeElevatedButton(
                  context, 'Inherited Widget', InheritedWidgetSample()),
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
