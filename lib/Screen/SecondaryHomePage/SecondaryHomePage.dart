import 'package:campousia/Screen/HomePage/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'SecondaryBody.dart';
import 'SecondaryDrawer.dart';

class SecondaryHomepage extends StatefulWidget {
  const SecondaryHomepage({Key? key}) : super(key: key);

  @override
  State<SecondaryHomepage> createState() => _SecondaryHomepageState();
}

class _SecondaryHomepageState extends State<SecondaryHomepage> {


  void BackButtonPressed(BuildContext context) async
  {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Homepage()));

  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        BackButtonPressed(context);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
            body: RefreshIndicator(
                child: SecondaryBody(),
                onRefresh: () async {
                }),

           // drawer: SecondaryHomapageDrawer()
          ),


      ),
    );
  }
}
