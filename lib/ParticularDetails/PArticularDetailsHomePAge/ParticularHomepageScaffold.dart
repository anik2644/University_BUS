import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:userapp/StaticPart/ModelStatic.dart';
import 'package:userapp/Taranga/TarangaAppBar.dart';
import 'package:userapp/Taranga/TarangaBusBody.dart';
import 'package:userapp/Taranga/TarangaFloatingButton.dart';
import '../../Model/InternetConnectionCHecker.dart';
import '../../constants.dart';

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
