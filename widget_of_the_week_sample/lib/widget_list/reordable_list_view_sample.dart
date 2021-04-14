// https://api.flutter.dev/flutter/material/ReorderableListView-class.html

import 'package:flutter/material.dart';

class ReordableListViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ReordableListView')),
      body: ReordableListViewBody(),
    );
  }
}

class ReordableListViewBody extends StatefulWidget {
  @override
  _ReordableListViewBodyState createState() => _ReordableListViewBodyState();
}

class _ReordableListViewBodyState extends State<ReordableListViewBody> {
  final List<int> _items = List<int>.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color eventItemColor = colorScheme.primary.withOpacity(0.15);

    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: [
        for (int index = 0; index < _items.length; index++)
          ListTile(
            key: Key('$index'),
            tileColor: _items[index].isOdd ? oddItemColor : eventItemColor,
            title: Text('Item ${_items[index]}'),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex--;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}
