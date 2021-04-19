// https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html

import 'package:flutter/material.dart';

class ListWheelScrollViewSample extends StatefulWidget {
  ListWheelScrollViewSample({Key? key}) : super(key: key);

  @override
  _ListWheelScrollViewSampleState createState() =>
      _ListWheelScrollViewSampleState();
}

class _ListWheelScrollViewSampleState extends State<ListWheelScrollViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListWheelScrollView')),
      body: Center(
        child: ListWheelScrollView(
          useMagnifier: true, // センターを拡大
          magnification: 1.5,
          physics: FixedExtentScrollPhysics(), // いい感じのところで止まる
          itemExtent: 75,
          children: items,
          diameterRatio: 3, // wheelの直径
          perspective: 0.003, // wheelの丸っこさ（0 ~ 0.01）
          onSelectedItemChanged: (index) => print(index), // 選択されたものの感知
        ),
      ),
    );
  }

  List<Widget> items = [
    ListTile(
      leading: Icon(Icons.local_activity, size: 50),
      title: Text('Activity'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_airport, size: 50),
      title: Text('Airport'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_atm, size: 50),
      title: Text('ATM'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_bar, size: 50),
      title: Text('Bar'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_cafe, size: 50),
      title: Text('Cafe'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_car_wash, size: 50),
      title: Text('Car Wash'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_convenience_store, size: 50),
      title: Text('Heart Shaker'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_dining, size: 50),
      title: Text('Dining'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_drink, size: 50),
      title: Text('Drink'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_florist, size: 50),
      title: Text('Florist'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_gas_station, size: 50),
      title: Text('Gas Station'),
      subtitle: Text('Description here'),
    ),
    ListTile(
      leading: Icon(Icons.local_grocery_store, size: 50),
      title: Text('Grocery Store'),
      subtitle: Text('Description here'),
    ),
  ];
}
