// https://api.flutter.dev/flutter/widgets/Draggable-class.html

import 'package:flutter/material.dart';

class DraggableSample extends StatelessWidget {
  const DraggableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable')),
      body: DraggableBody(),
    );
  }
}

class DraggableBody extends StatefulWidget {
  DraggableBody({Key? key}) : super(key: key);

  @override
  _DraggableBodyState createState() => _DraggableBodyState();
}

class _DraggableBodyState extends State<DraggableBody> {
  int acceptedDate = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Draggable<int>(
          data: 10,
          // デフォルト状態
          child: Container(
            height: 100,
            width: 100,
            color: Colors.lightGreenAccent,
            child: const Center(child: Text('Draggable')),
          ),
          // drag中
          feedback: Container(
            color: Colors.deepOrange,
            height: 100,
            width: 100,
            child: const Icon(Icons.directions_run),
          ),
          // dragに残された部分
          childWhenDragging: Container(
            height: 100,
            width: 100,
            color: Colors.pinkAccent,
            child: Center(
              child: Text('Child When Dragging'),
            ),
          ),
        ),
        // Drag先
        DragTarget<int>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              child: Center(
                child: Text('Value is updated to: $acceptedDate'),
              ),
            );
          },
          // drag対象が上に来た時？
          // onWillAccept:
          // ドラッグが離れた時？
          // onLeave:
          // dragが成功したときの処理
          onAccept: (int data) {
            setState(() {
              acceptedDate += data;
            });
          },
        )
      ],
    );
  }
}
