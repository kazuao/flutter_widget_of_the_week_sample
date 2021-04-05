// 参考: https://qiita.com/Idenon/items/22fcdff1a2b4d89916bd

import 'package:flutter/material.dart';

class HeroSample extends StatelessWidget {
  const HeroSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero')),
      body: HeroTransition(),
    );
  }
}

class HeroTransition extends StatelessWidget {
  const HeroTransition({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 300,
      child: InkWell(
        onTap: () {
          MaterialPageRoute(builder: (context) => HeroNext());
        },
        child: Card(
          margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          clipBehavior: Clip.antiAlias,
          child: Hero(
            tag: 'photo',
            child: Image.asset('assets/bb.jpeg'),
          ),
        ),
      ),
    );
  }
}

class HeroNext extends StatelessWidget {
  const HeroNext({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('next')),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Hero(
          tag: 'photo',
          child: Image.asset('assets/bb.jpeg'),
        ),
      ),
    );
  }
}
