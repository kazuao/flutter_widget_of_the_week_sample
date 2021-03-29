import 'package:flutter/material.dart';

class SliverSample extends StatefulWidget {
  SliverSample({Key key}) : super(key: key);

  @override
  _SliverSampleState createState() => _SliverSampleState();
}

class _SliverSampleState extends State<SliverSample> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
              background: FlutterLogo(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Center(
              child: SizedBox(
                height: 2000,
                child: Text('Scroll to see SliverAppBar in effect.'),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Text('pinned'),
                Switch(
                  value: _pinned,
                  onChanged: ((bool val) {
                    setState(() {
                      _pinned = val;
                    });
                  }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text('snap'),
                Switch(
                  onChanged: (bool val) {
                    setState(() {
                      _snap = val;
                      _floating = _floating || val;
                    });
                  },
                  value: _snap,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text('floating'),
                Switch(
                  onChanged: (bool val) {
                    setState(() {
                      _floating = val;
                      if (_snap == true) {
                        if (_floating != true) {
                          _snap = false;
                        }
                      }
                    });
                  },
                  value: _floating,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
