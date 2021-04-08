// 参考: https://api.flutter.dev/flutter/widgets/Dismissible-class.html

import 'package:flutter/material.dart';

class DismissibleSample extends StatelessWidget {
  const DismissibleSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible')),
      body: DismissibleBody(),
    );
  }
}

class DismissibleBody extends StatefulWidget {
  DismissibleBody({Key? key}) : super(key: key);

  @override
  _DismissibleBodyState createState() => _DismissibleBodyState();
}

class _DismissibleBodyState extends State<DismissibleBody> {
  List<int> items = List<int>.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          child: ListTile(title: Text('Item ${items[index]}')),
          background: Container(
            alignment: Alignment.centerLeft,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
          secondaryBackground: Container(
            alignment: Alignment.centerRight,
            color: Colors.orangeAccent[200],
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
              child: Icon(Icons.thumb_up, color: Colors.white),
            ),
          ),
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
        );
      },
    );
  }
}
