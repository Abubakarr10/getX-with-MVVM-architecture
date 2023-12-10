
import 'package:get/get.dart';

class OpacityX extends GetxController{

  RxDouble opacity = 0.4.obs;
  RxDouble opacitySecond = 0.9.obs;

  changeOpacity(double value){
    opacity.value = value;
    opacitySecond.value = value;
  }
}