// import 'package:flutter/material.dart';

// class FadeTransitionSample extends StatelessWidget {
//   const FadeTransitionSample({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Fade Transition')),
//       body: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget>
//     with TickerProviderStateMixin {
//   final AnimationController _controller = AnimationController(
//     duration: const Duration(seconds: 2),
//     vsync: this,
//   )..repeat(reverse: true);

//   final Animation<double> _animation =
//       CurvedAnimation(parent: _controller, curve: Curves.easeIn);

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: FadeTransition(
//         opacity: _animation,
//         child: const Padding(
//           padding: EdgeInsets.all(8),
//           child: FlutterLogo(),
//         ),
//       ),
//     );
//   }
// }
