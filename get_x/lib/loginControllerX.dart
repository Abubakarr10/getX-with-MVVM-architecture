import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/webPage.dart';
import 'package:http/http.dart';

class LoginControllerX  extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void getLogin()async{
    loading.value = true;
    try{
      final response = await post(Uri.parse('https://reqres.in/api/login'),
      body: {
        'email' : emailController.value.text,
        'password' : passwordController.value.text
      });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if(response.statusCode==200){
        loading.value = false;
        Get.snackbar('Login Successfully', 'Most Welcome');
        Get.to(const WebPage());
      }else{
        loading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    }catch(error){
      loading.value = false;
      Get.snackbar('Exception', error.toString());
    }
  }

}