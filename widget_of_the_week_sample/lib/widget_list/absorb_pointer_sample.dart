import 'package:flutter/material.dart';

class AbsorbPointerSample extends StatelessWidget {
  const AbsorbPointerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AbsorbPointer')),
      body: AbsorbPointerBody(),
    );
  }
}

class AbsorbPointerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              absorbing: true,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade200,
                ),
                onPressed: () {},
                child: null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
