import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'opacityController.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  OpacityX opacityX = Get.put(OpacityX());
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() => Container(
            height: 350,
            color: Colors.red.withOpacity(opacityX.opacity.value),
            child: const Center(child: Text('I LOVE YOU GEE',style: TextStyle(
              fontSize: 60, fontWeight: FontWeight.w400,
              color: Colors.red
            ),)),
          ),),
          Obx(() => Slider(value: opacityX.opacity.value, onChanged: (value){
            opacityX.changeOpacity(value);
          }))
        ],
      ),
    );
  }
}

