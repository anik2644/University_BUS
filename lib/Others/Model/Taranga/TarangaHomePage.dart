import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../HomePageComponent/HomePage.dart';
import '../../ParticularDetails/PArticularDetailsHomePAge/ParticularHomepageScaffold.dart';

class TarangaHomePage extends StatefulWidget {


  ParticularHomepageScaffold sCaffold = ParticularHomepageScaffold();

  @override
  State<TarangaHomePage> createState() => _TarangaHomePageState();
}

class _TarangaHomePageState extends State<TarangaHomePage> {

void BackButtonPressed() async
 {
   print("Happy Family");
   Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (BuildContext context) => Homepage()));

 }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        BackButtonPressed();
        return true;
      },
      child: RefreshIndicator(
        onRefresh: () {

            return Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => super.widget));
        },
             child:  widget.sCaffold,
      ),
    );
  }
}
