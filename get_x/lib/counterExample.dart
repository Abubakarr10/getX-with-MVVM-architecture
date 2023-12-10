import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counterConroller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int x = 0;
  CounterController counter = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print('Rebuild: '+x.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        centerTitle: true,
      ),
      body:  Column(
      //  crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Obx(() {
            return Text(counter.counter.toString(),style: const TextStyle(fontSize: 270,fontWeight: FontWeight.w100),);
    }))
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15),
        child: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              counter.incrementCounter();
            }),
      ),
    );
  }
}
