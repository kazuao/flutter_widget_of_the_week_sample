import 'package:flutter/material.dart';

class AlignSample extends StatelessWidget {
  const AlignSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align')),
      body: AlignBody(),
    );
  }
}

class AlignBody extends StatelessWidget {
  const AlignBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 120,
            width: 120,
            color: Colors.blue[50],
            child: Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(size: 60),
            ),
          ),
        ),
        SizedBox(height: 20),
        // -1 ~ 1の間で数値を決められる
        Center(
          child: Container(
            height: 120,
            width: 120,
            color: Colors.green[50],
            child: Align(
              alignment: Alignment(0.2, -0.7),
              child: FlutterLogo(size: 60),
            ),
          ),
        ),
        SizedBox(height: 20),
        // 左上を基準
        Center(
          child: Container(
            height: 120,
            width: 120,
            color: Colors.red[50],
            child: Align(
              alignment: FractionalOffset(0.2, 0.6),
              child: FlutterLogo(size: 60),
            ),
          ),
        ),
      ],
    );
  }
}
