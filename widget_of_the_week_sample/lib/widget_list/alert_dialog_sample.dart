// https://api.flutter.dev/flutter/material/AlertDialog-class.html

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog')),
      body: Center(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          _showMyDialog(context);
        }),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // trueにすると、ダイアログ外をタップすると閉じる
      builder: (BuildContext context) {
        // iOS風にするなら CupertinoAlertDialog にする
        return CupertinoAlertDialog(
          // return AlertDialog(
          title: Text('AlertDialog Title'),
          // 画像も適用できる
          // content: FlutterLogo(),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
