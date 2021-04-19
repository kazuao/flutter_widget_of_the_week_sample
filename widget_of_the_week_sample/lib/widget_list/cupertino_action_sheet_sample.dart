// https://api.flutter.dev/flutter/cupertino/CupertinoActionSheet-class.html

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetSample extends StatefulWidget {
  CupertinoActionSheetSample({Key? key}) : super(key: key);

  @override
  _CuperActionSheetSampleState createState() => _CuperActionSheetSampleState();
}

class _CuperActionSheetSampleState extends State<CupertinoActionSheetSample> {
  String _message = '';

  void _setMessage(message) {
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CupertinoActionSheet')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                _message,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 0.5),
              ),
            ),
            ElevatedButton(
              child: Text('選択してください'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoActionSheet(
                      title: Text('選択した項目が画面に表示'),
                      actions: [
                        CupertinoActionSheetAction(
                          child: Text('テスト1'),
                          onPressed: () {
                            _setMessage('テスト1');
                            Navigator.pop(context, 'テスト1');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text('テスト2'),
                          onPressed: () {
                            _setMessage('テスト2');
                            Navigator.pop(context, 'テスト2');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text('テスト3'),
                          onPressed: () {
                            _setMessage('テスト3');
                            Navigator.pop(context, 'テスト3');
                          },
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: Text('キャンセル'),
                        isDefaultAction: true,
                        onPressed: () => Navigator.pop(context, 'キャンセル'),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
