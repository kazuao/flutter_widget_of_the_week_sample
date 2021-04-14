// https://api.flutter.dev/flutter/widgets/ListView-class.html

import 'package:flutter/material.dart';

class ListViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: fixedListView(),
            ),
            SizedBox(height: 20),
            builderListView(),
            SizedBox(height: 20),
            separatedListView(),
            SizedBox(height: 20),
            emptyListView(),
          ],
        ),
      ),
    );
  }

  // 固定でListViewを作る
  Widget fixedListView() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }

  // 可変のListViewを作る
  Widget builderListView() {
    final List<String> entries = ['A', 'B', 'C'];
    final List<int> colorCodes = [600, 500, 100];

    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
    );
  }

  // List間に間隔を開ける
  Widget separatedListView() {
    final List<String> entries = ['A', 'B', 'C'];
    final List<int> colorCodes = [600, 500, 100];

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  // 空のList処理
  Widget emptyListView() {
    List<String> items = [];

    return items.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item: ${items[index]}'),
              );
            },
          )
        : Center(child: const Text('No Items'));
  }
}
