// https://note.com/hatchoutschool/n/nc1145ad7ffa4

import 'package:flutter/material.dart';

class AboutDialogSample extends StatefulWidget {
  AboutDialogSample({Key? key}) : super(key: key);

  @override
  _AboutDialogSampleState createState() => _AboutDialogSampleState();
}

class _AboutDialogSampleState extends State<AboutDialogSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AboutDialog')),
      body: Center(
        child: TextButton(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text('詳細を表示'),
          ),
          style: TextButton.styleFrom(primary: Colors.grey),
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: '1.0.0',
              applicationIcon: FlutterLogo(),
              applicationLegalese:
                  'This application has been approved for all audiences.',
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('ここにアプリの説明、概要などを表示させます。'),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
