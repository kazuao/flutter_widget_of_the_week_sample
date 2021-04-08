// 参考: https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html

import 'package:flutter/material.dart';

// 継承元クラス
class FrogColor extends InheritedWidget {
  final Color? color;

  const FrogColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  static FrogColor of(BuildContext context) {
    final FrogColor? result =
        context.dependOnInheritedWidgetOfExactType<FrogColor>();
    assert(result != null, 'No FrogColor fond in context');
    return result!;
  }

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;
}

class InheritedWidgetSample extends StatelessWidget {
  const InheritedWidgetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inherited Widget')),
      body: FrogColor(
        color: Colors.green,
        child: Builder(
          builder: (BuildContext innerContext) {
            return Text(
              'Hello Frog',
              style: TextStyle(color: FrogColor.of(innerContext).color),
            );
          },
        ),
      ),
    );
  }
}

class MyOtherPage extends StatelessWidget {
  const MyOtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Page')),
      body: FrogColor(
        color: Colors.green,
        child: Text(
          'Hello Frog',
          style: TextStyle(color: FrogColor.of(context).color),
        ),
      ),
    );
  }
}
