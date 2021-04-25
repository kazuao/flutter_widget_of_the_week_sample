// https://pub.dev/packages/location

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DeviceInfoSample extends StatelessWidget {
  DeviceInfoSample({Key? key}) : super(key: key);

  final DeviceInfoPlugin deviceInto = DeviceInfoPlugin();

  void checkUpDeviceInfo() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInto.androidInfo;
      print('Runnning on ${androidInfo.model}');
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInto.iosInfo;
      print('Running on ${iosInfo.model}');
    }
  }

  @override
  Widget build(BuildContext context) {
    checkUpDeviceInfo();

    return Scaffold(
      appBar: AppBar(title: const Text('DeviceInfo')),
      body: Center(),
    );
  }
}
