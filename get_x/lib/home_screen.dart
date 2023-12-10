import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/ImageExample.dart';
import 'package:get_x/listFav.dart';
import 'package:get_x/login.dart';
import 'package:get_x/opacityExample.dart';
import 'package:get_x/screenOne.dart';

import 'counterExample.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('GetX')),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("GetX Dialog Alert"),
                    subtitle: const Text("GetX Dialog without context using GetX"),
                    onTap: (){
                      Get.defaultDialog(
                          title: "Delete Chats",
                          titlePadding: const EdgeInsets.only(top: 20),
                          contentPadding: const EdgeInsets.all(20),
                          middleText: "Are you sure to delete all chats",
                          textCancel: 'Cancel',
                          textConfirm: 'Yes'
                      );
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX Bottom Sheet"),
                    subtitle: const Text("Using getX to change app Theme"),
                    onTap: (){
                      Get.bottomSheet(
                        Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: const Text('Light mode'),
                                leading: const Icon(Icons.light_mode),
                                onTap: (){
                                  Get.changeTheme(ThemeData.light());
                                },
                              ),
                              ListTile(
                                title: const Text('Dark mode'),
                                leading: const Icon(Icons.dark_mode),
                                onTap: (){
                                  Get.changeTheme(ThemeData.dark());
                                  print('tap hora ha');
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX Navigation & Routes"),
                    subtitle: const Text("Using getX to move from one page to another"),
                    onTap: (){
                      Get.to(const ScreenOne());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX Height & Width"),
                    subtitle: const Text("Using getX to give responsive height and width"),
                    onTap: (){
                      Get.to(const ScreenOne());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX Language Localization"),
                    subtitle: const Text("Using getX to use different languages with Firebase"),
                    onTap: (){
                      Get.to(const ScreenOne());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX State-Management"),
                    subtitle: const Text("Counter example 1 using GetX"),
                    onTap: (){
                      Get.to(const CounterExample());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX State-Management"),
                    subtitle: const Text("Opacity example 2 using GetX"),
                    onTap: (){
                      Get.to(const OpacityExample());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX State-Management"),
                    subtitle: const Text("List Fav. example 4 using GetX"),
                    onTap: (){
                      Get.to(const ListFav());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX State-Management"),
                    subtitle: const Text("Image Picker in GetX"),
                    onTap: (){
                      Get.to(const ImageExample());
                    },
                  ),
                  const SizedBox(height: 10,),
                  ListTile(
                    title: const Text("GetX State-Management"),
                    subtitle: const Text("Login with REST-APIs in GetX"),
                    onTap: (){
                      Get.to(const LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
              "Mubarak ho",
              'Shadhi hogi :)',
            icon: const Icon(Icons.card_giftcard)
          );
        },
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
        child: const Icon(Icons.touch_app_rounded),
      ),
    );
  }
}
