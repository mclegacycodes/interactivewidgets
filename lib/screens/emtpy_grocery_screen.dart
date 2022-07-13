import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
 padding: const EdgeInsets.all(30.0),
 // 2
 child: Center(
 // 3
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
Flexible(child: AspectRatio(aspectRatio: 1/1, 
child: Image.asset('assets/fooderlich_assets/empty_list.png'),)),
 // TODO 5: Add empty screen title
 // TODO 6: Add empty screen subtitle
 // TODO 7: Add browse recipes button
 ],
 ),
 ),
);

  }
}
