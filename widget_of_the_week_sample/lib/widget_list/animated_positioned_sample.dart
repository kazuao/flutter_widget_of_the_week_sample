// https://api.flutter.dev/flutter/widgets/AnimatedPositioned-class.html

import 'package:flutter/material.dart';

class AnimatedPositionedSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPositioned')),
      body: _AnimatedPositionedBody(),
    );
  }
}

class _AnimatedPositionedBody extends StatefulWidget {
  @override
  __AnimatedPositionedBodyState createState() =>
      __AnimatedPositionedBodyState();
}

class __AnimatedPositionedBodyState extends State<_AnimatedPositionedBody> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: selected ? 200 : 50,
              height: selected ? 50 : 200,
              top: selected ? 50 : 150,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Tap me')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
