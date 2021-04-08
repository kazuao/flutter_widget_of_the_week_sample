// 参考: https://flutter.dev/docs/cookbook/images/fading-in-images
// Info.plistへ「NSBonjourServices」の追加が必要

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageSample extends StatelessWidget {
  const FadeInImageSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FadeIn Image')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(child: CircularProgressIndicator()),
              Center(
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: 'https://picsum.photos/250?image=9'),
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/Ellipsis-1s-200px.gif',
              image: 'https://picsum.photos/250?image=9',
            ),
          ),
        ],
      ),
    );
  }
}
