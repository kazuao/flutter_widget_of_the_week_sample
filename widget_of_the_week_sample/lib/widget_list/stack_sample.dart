// https://api.flutter.dev/flutter/widgets/Stack-class.html

import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack')),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              width: 250,
              height: 250,
              child: Stack(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withAlpha(0),
                          Colors.black12,
                          Colors.black45,
                        ],
                      ),
                    ),
                    child: Text(
                      'Foreground Text',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
