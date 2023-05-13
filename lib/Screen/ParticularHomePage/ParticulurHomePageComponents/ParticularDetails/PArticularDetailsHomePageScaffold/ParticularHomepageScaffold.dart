import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../Model/StaticPart/ModelStatic.dart';
import '../../../../Model/InternetConnectionCHecker.dart';
import 'ScaffoldItems/TarangaAppBar.dart';
import 'ScaffoldItems/TarangaBusBody.dart';
import 'ScaffoldItems/TarangaFloatingButton.dart';



class ParticularHomepageScaffold extends StatefulWidget {

  PreferredSize aPbar = PreferredSize(preferredSize: Size.fromHeight(80), child: TarangaAppbar(),);
  ConnectionChecker bOdy = ConnectionChecker(new TarangaBusBody());
  var fLbutton = TarangaFloatingButton();

  @override
  State<ParticularHomepageScaffold> createState() => _ParticularHomepageScaffoldState();
}
class _ParticularHomepageScaffoldState extends State<ParticularHomepageScaffold> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.aPbar,
      body: widget.bOdy,
      floatingActionButton: ModelStatic.gps_share_flag == 1 ? widget.fLbutton : null,
    );
  }
}
