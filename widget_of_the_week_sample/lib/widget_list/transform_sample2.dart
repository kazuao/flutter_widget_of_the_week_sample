// 参考: https://gist.github.com/hnvn/f1094fb4f6902078516cba78de9c868e

import 'package:flutter/material.dart';

class TransformSample2 extends StatelessWidget {
  Widget? child;
  TransformSample2({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transform2')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: child,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 2.0)),
          ClipRect(
              child: Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: child,
          ))
        ],
      ),
    );
  }
}
