
import 'package:get/get.dart';

class FavouriteX extends GetxController{

  RxList<String> fruitNames = ['Mangoes', 'Apples', 'Grapes', 'Banana'].obs;
  RxList tempFruitNames = [].obs;

  addToFavList(value){
    tempFruitNames.add(value);
  }

  removeFromFavList(value){
    tempFruitNames.remove(value);
  }
}