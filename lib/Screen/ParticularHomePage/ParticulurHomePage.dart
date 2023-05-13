import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../HomePage/HomePage.dart';
import 'ParticulurHomePageComponents/ParticulurHomepageRefresh.dart';


class ParticulurHomePage extends StatefulWidget {
  ParticulurHomepageRefresh rEfreshIndicator = ParticulurHomepageRefresh();

  void BackButtonPressed(BuildContext context) async
  {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Homepage()));

  }



  @override
  State<ParticulurHomePage> createState() => _ParticulurHomePageState();
}

class _ParticulurHomePageState extends State<ParticulurHomePage> {




  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.BackButtonPressed(context);
        return true;
      },
      child: widget.rEfreshIndicator,
    );
  }
}
