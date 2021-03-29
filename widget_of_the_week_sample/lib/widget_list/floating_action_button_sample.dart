import 'package:flutter/material.dart';

class FloatingActionButtonSample extends StatelessWidget {
  const FloatingActionButtonSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button')),
      body: Center(
        child: Text('Press the button with a label below!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(''),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
        onPressed: () => null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
