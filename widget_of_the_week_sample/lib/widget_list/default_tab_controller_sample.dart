// https://api.flutter.dev/flutter/material/DefaultTabController-class.html

import 'package:flutter/material.dart';

class DefaultTabControllerSample extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Left'),
    Tab(text: 'Right'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: myTabs),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String label = tab.text!.toLowerCase();
            return Center(
              child: Text('This is the $label tab',
                  style: const TextStyle(fontSize: 36)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
