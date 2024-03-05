import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetxWidget extends StatelessWidget {
  final count = 0.obs;

   MyGetxWidget({super.key});

  void increment() => count.value++;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Obx(() => Text('Counter: $count')),
        ElevatedButton(
          onPressed: increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}