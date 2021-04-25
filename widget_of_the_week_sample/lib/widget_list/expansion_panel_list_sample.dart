// https://api.flutter.dev/flutter/material/ExpansionPanelList-class.html

import 'package:flutter/material.dart';

class ExpansionPanelListSample extends StatelessWidget {
  const ExpansionPanelListSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ExpansionPanelList')),
      body: _ExpansionBody(),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class _ExpansionBody extends StatefulWidget {
  _ExpansionBody({Key? key}) : super(key: key);

  @override
  __ExpansionBodyState createState() => __ExpansionBodyState();
}

class __ExpansionBodyState extends State<_ExpansionBody> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
            subtitle:
                const Text('To delete hits panel, tap the trash can icon'),
            trailing: const Icon(Icons.delete),
            onTap: () {
              setState(() {
                _data.removeWhere((Item currentItem) => item == currentItem);
              });
            },
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
