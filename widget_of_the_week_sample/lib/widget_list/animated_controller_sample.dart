import 'package:flutter/material.dart';

class AnimatedController extends StatefulWidget {
  AnimatedController({Key? key}) : super(key: key);

  @override
  _AnimatedControllerState createState() => _AnimatedControllerState();
}

class _AnimatedControllerState extends State<AnimatedController> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Controller')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.red : Colors.blue,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.bounceOut, // いろいろある
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}
