import 'package:flutter/material.dart';

class FittedBoxSample extends StatelessWidget {
  const FittedBoxSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FittedBox')),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.red,
          child: FittedBox(
            child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
