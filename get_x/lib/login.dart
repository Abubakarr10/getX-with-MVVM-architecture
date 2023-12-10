import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/loginControllerX.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginControllerX controllerX = Get.put(LoginControllerX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              controller: controllerX.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              controller: controllerX.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          const SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){
                controllerX.getLogin();
              },
              child: Container(
                  height: 45,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade800, Colors.red],
                      begin: Alignment.centerLeft, end: Alignment.centerRight
                    ),
                  ),
                  child:  Center(
                      child: Obx((){
                        return controllerX.loading.value? const CircularProgressIndicator(
                          color: Colors.white,
                        ) :
                        const Text('Login',style: TextStyle(
                            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300
                        ),);
                      })
                  )),
            ),
          )
        ],
      ),
    );
  }
}
