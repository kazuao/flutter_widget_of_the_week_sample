import 'package:flutter/material.dart';

class OpacitySample extends StatefulWidget {
  OpacitySample({Key? key}) : super(key: key);

  @override
  _OpacitySampleState createState() => _OpacitySampleState();
}

class _OpacitySampleState extends State<OpacitySample> {
  bool selected = false;
  bool animatedSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opacity')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            rowBox(),
            SizedBox(
              height: 100,
            ),
            animatedRowBox(),
          ],
        ),
      ),
    );
  }

  GestureDetector rowBox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Row(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
          Opacity(
            opacity: selected ? 0.3 : 0.8,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
        ],
      ),
    );
  }

  GestureDetector animatedRowBox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          animatedSelected = !animatedSelected;
        });
      },
      child: Row(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
          AnimatedOpacity(
            opacity: animatedSelected ? 0.3 : 0.8,
            duration: Duration(seconds: 1),
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
        ],
      ),
    );
  }
}
