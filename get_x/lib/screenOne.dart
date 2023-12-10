import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/webPage.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Screen One'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap:(){
                Get.to(const WebPage());
              },
              child:  const Center(child: Text('Move to next page'))),
          Container(
            height: Get.height * .2,
            width: Get.width * .8,
            margin: const EdgeInsets.only(top: 10,bottom: 30),
            color: Colors.grey,
            child: const Center(child: Text('GetX Height & Width',
              style: TextStyle(
                fontSize: 20, color: Colors.white
              ),)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: OutlinedButton(onPressed: (){
                      Get.updateLocale(const Locale('en','US'));
                    }, child: const Text('English')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: OutlinedButton(onPressed: (){
                      Get.updateLocale(const Locale('ur','PK'));
                    }, child: const Text('Urdu')),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
