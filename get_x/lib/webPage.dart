import "package:flutter/material.dart";
import "package:get/get.dart";

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Management',
          style: TextStyle(
            fontWeight: FontWeight.w100,
            color: Colors.white
          ),),
        backgroundColor: Colors.brown,
        actions: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Home',style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Events',style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Services',style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8,right: 20),
                child: Text('About Us',style: TextStyle(color: Colors.white),),
              ),
            ],
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.brown, Colors.white],
            begin: Alignment.topCenter, end: Alignment.bottomRight
          )
        ),
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 280,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 40
                      )]
                    ),
                    child: InkWell(
                      onTap: (){
                        Get.back();
                        Get.back();
                      },
                      child: const Column(
                        children: [
                          Icon(Icons.home,size: 200,),
                          Text('Home',style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BoxIcon extends StatefulWidget {
  final String title;
  final IconData iconPath;
  const BoxIcon({super.key, required this.title, required this.iconPath});

  @override
  State<BoxIcon> createState() => _BoxIconState();
}

class _BoxIconState extends State<BoxIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 280,
      decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [BoxShadow(
              color: Colors.black,
              offset: Offset(0, 3),
              blurRadius: 40
          )]
      ),
      // child:  Column(
      //   children: [
      //     Icon(ic,size: 200,),
      //     Text(title,style: TextStyle(fontSize: 18),)
      //   ],
      // ),
    );
  }
}
