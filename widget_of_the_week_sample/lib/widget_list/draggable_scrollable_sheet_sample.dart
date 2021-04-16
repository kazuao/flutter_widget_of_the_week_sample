// https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html

import 'package:flutter/material.dart';

class DraggableScrollableSheetSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DraggableScrollableSheet')),
      body: SizedBox.expand(child: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.blue[100],
            child: ListView.builder(
              itemCount: 25,
              controller: scrollController,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
            ),
          );
        },
      )),
    );
  }
}
