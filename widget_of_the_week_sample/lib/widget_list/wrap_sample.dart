import 'package:flutter/material.dart';

class WrapSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap')),
      body: Wrap(
        spacing: 10.0,
        runSpacing: 4.0,
        children: [
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: Text('AH'),
            ),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: Text('ML'),
            ),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: Text('HM'),
            ),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: Text('JL'),
            ),
            label: Text('Laurens'),
          ),
        ],
      ),
    );
  }
}
