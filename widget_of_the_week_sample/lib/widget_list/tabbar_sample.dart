// https://api.flutter.dev/flutter/material/TabBar-class.html

import 'package:flutter/material.dart';

class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.cloud_outlined)),
            Tab(icon: Icon(Icons.beach_access_sharp)),
            Tab(icon: Icon(Icons.brightness_5_sharp)),
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('It\'s cloudy here')),
            Center(child: Text('It\'s rainy here')),
            Center(child: Text('It\'s sunny here')),
          ],
        ),
      ),
    );
  }
}
