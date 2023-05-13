import 'package:campousia/Screen/HomePage/HomePageComponent/HomepageBodyComponant/AdvertisePortion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomepageBodyComponant/ImageGallery.dart';
import 'HomepageBodyComponant/StartButton.dart';

class HomePageBody extends StatefulWidget {

  ImageGallery iMageGallery = new ImageGallery();
  AdvertisePortion advertisePortion = AdvertisePortion();
  StartBUtton sTartbutton = new StartBUtton();

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          widget.iMageGallery,
          SizedBox(height: 20,),
          /*
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => TarangaHomePage()));
            },
            child: Card(

              shadowColor: Colors.black,
              // shape: RoundedRectangleBorder(
              //   side: BorderSide(color: Colors.white70, width: 1),
              //   borderRadius: BorderRadius.circular(20),
              // ),
              elevation: 40,
              child: Column(
                children: [
                  //SizedBox(height: 25,),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: NetworkImage("https://mir-s3-cdn-cf.behance.net/projects/404/09168776523483.Y3JvcCwxMzgwLDEwODAsMjcwLDA.jpg"),
                        fit: BoxFit.cover,),// child: Image.network(imageVal)
                    ),
                    padding: EdgeInsets.all(15),
                    child: Center(child: ListTile(title: Text("আমি তাই করি ভাই যখন চাহে এ মন যা,\nকরি শত্রুর সাথে গলাগলি, ধরি মৃত্যুর সাথে পান্জা;\n\nআমি উন্মাদ, আমি ঝন্ঝা!\nআমি মহামারী আমি ভীতি এ ধরিত্রীর;\n\nবল বীর –আমি  চির উন্নত শির!\n\n",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                    ))),
                  ),
                ],
              ),
            ),
          ),

*/
          widget.advertisePortion,
          widget.sTartbutton

        ],
      ),
    );
  }
}
