// https://pub.dev/packages/url_launcher
// 1. pubspec.yamlにurl_launcherを取り込む
// 2. Info.plistに下記を記述する
// <key>LSApplicationQueriesSchemes</key>
// <array>
//  <string>https</string>
//  <string>http</string>
// </array>
// 3. 実装

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://flutter.dev';

class UrlLauncherSample extends StatelessWidget {
  const UrlLauncherSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UrlLauncher')),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Flutter homepage'),
          onPressed: _launchURL,
        ),
      ),
    );
  }

  void _launchURL() async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }
}
