import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Model/StaticPart/ModelStatic.dart';
import 'ParticularDetails/PHPSffold/PHPScflld.dart';

class ParticulurHomepageRefresh extends StatefulWidget {

  ParticularHomepageScaffold sCaffold = ParticularHomepageScaffold();

  @override
  State<ParticulurHomepageRefresh> createState() => _ParticulurHomepageRefreshState();
}

class _ParticulurHomepageRefreshState extends State<ParticulurHomepageRefresh> {

  Future<void> RefreshFunction()
  async {
    await ModelStatic.particularBusDataLoad();
    setState(() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => super.widget));
    });

  }



  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: ()  {
        return RefreshFunction();
      },
      child:  widget.sCaffold,
    );
  }
}
