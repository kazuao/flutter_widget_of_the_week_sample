import 'package:flutter/material.dart';

class ExpadedSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded')),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                height: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
