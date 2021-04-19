// https://api.flutter.dev/flutter/material/SnackBar-class.html

import 'package:flutter/material.dart';

class SnackBarSample extends StatelessWidget {
  const SnackBarSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Show Snackbar'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Awesome Snackbar!'),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Show Snackbar2'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Awesome Snackbar2!'),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {},
                    ),
                    duration: const Duration(milliseconds: 1500),
                    width: 280,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
