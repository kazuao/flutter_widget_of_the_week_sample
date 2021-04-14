// https://api.flutter.dev/flutter/material/ListTile-class.html

import 'package:flutter/material.dart';

class ListTileSample extends StatelessWidget {
  int _act = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile')),
      body: Column(
        children: [
          // someListTile(),
          // rowListTile(),
          // witchListTIle(),
          fixedListTile(),
        ],
      ),
    );
  }

  Widget someListTile() {
    return Expanded(
      child: ListView(
        children: [
          Card(child: ListTile(title: Text('One-line ListTile'))),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with leading widget'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('One-line with trailing widget'),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with both widgets'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('One-line dense ListTile'),
              dense: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72),
              title: Text('Three-line ListTile'),
              subtitle:
                  Text('A sufficiently long subtitle warrants three lines.'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget rowListTile() {
    return Row(
      children: const <Widget>[
        Expanded(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('These ListTiles are expanded '),
          ),
        ),
        Expanded(
          child: ListTile(
            trailing: FlutterLogo(),
            title: Text('to fill the available space.'),
          ),
        ),
      ],
    );
  }

  Widget witchListTIle() {
    return ListTile(
      leading: const Icon(Icons.flight_land),
      title: const Text('Trix\'s airplane'),
      subtitle:
          _act != 2 ? const Text('The airplane is only in Act II.') : null,
      enabled: _act == 2,
      onTap: () => null,
    );
  }

  Widget fixedListTile() {
    return ListTile(
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {},
        child: Container(
          width: 48,
          height: 48,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          alignment: Alignment.center,
          child: CircleAvatar(),
        ),
      ),
      title: Text('title'),
      dense: false,
    );
  }
}
