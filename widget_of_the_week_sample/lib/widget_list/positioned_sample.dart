import 'package:flutter/material.dart';

class PositionedSample extends StatelessWidget {
  const PositionedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Positioned')),
      body: PositionedBody(),
    );
  }
}

class PositionedBody extends StatelessWidget {
  const PositionedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            width: 100,
            height: 100,
            child: Container(color: Colors.indigo),
          ),
          Positioned(
            left: 100,
            top: 100,
            width: 100,
            height: 200,
            child: Container(color: Colors.cyan),
          ),
        ],
      ),
    );
  }
}
