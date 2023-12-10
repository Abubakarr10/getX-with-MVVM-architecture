import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/FavouriteController.dart';

class ListFav extends StatefulWidget {
  const ListFav({super.key});

  @override
  State<ListFav> createState() => _ListFavState();
}

class _ListFavState extends State<ListFav> {

  FavouriteX favouriteX = Get.put(FavouriteX());

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: favouriteX.fruitNames.length,
            itemBuilder: (context,index){
          return  Card(
            child: ListTile(
              onTap: (){
                if(favouriteX.tempFruitNames.contains(favouriteX.fruitNames[index].toString())){
                  favouriteX.removeFromFavList(favouriteX.fruitNames[index].toString());
                }else{
                  favouriteX.addToFavList(favouriteX.fruitNames[index].toString());
                }
              },
              title: Text(favouriteX.fruitNames[index].toString()),
              trailing: Obx(() => favouriteX.tempFruitNames.contains(favouriteX.fruitNames[index].toString()) ?
              const Icon(Icons.favorite,color: Colors.red,)
                  : const Icon(Icons.favorite,color: Colors.white,),)
            ),
          );
        }),
      ),
    );
  }
}
