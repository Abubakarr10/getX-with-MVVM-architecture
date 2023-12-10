import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/imagePickerController.dart';

class ImageExample extends StatefulWidget {
  const ImageExample({super.key});

  @override
  State<ImageExample> createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {

  ImagePickerX imagePickerX = Get.put(ImagePickerX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker with GetX'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx((){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 160,
                backgroundImage: imagePickerX.imagePath.isNotEmpty?
                FileImage(File(imagePickerX.imagePath.toString())) : null,
              ),
              const SizedBox(height: 10,),
              OutlinedButton(
                  onPressed: (){
                    imagePickerX.getImage();
                  },
                  child: const Text('Select Image'))
            ],
          );
        }),
      ),
    );
  }
}
