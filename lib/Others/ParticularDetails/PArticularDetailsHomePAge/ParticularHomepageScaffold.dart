import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:userapp/StaticPart/ModelStatic.dart';

import '../../Model/InternetConnectionCHecker.dart';
import '../../Model/Taranga/TarangaAppBar.dart';
import '../../Model/Taranga/TarangaBusBody.dart';
import '../../Model/Taranga/TarangaFloatingButton.dart';

class ParticularHomepageScaffold extends StatefulWidget {

  ConnectionChecker bOdy = ConnectionChecker(new TarangaBusBody());
  PreferredSize aPbar = PreferredSize(preferredSize: Size.fromHeight(80), child: TarangaAppbar(),);

  @override
  State<ParticularHomepageScaffold> createState() => _ParticularHomepageScaffoldState();
}

class _ParticularHomepageScaffoldState extends State<ParticularHomepageScaffold> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: widget.aPbar,
        body: widget.bOdy,
        floatingActionButton: ModelStatic.gps_share_flag == 1 ? TarangaFloatingButton() : null,
      ),
    );
  }
}
