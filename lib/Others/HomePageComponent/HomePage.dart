import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ListenActivity/InternetShowDialougeBox.dart';
import '../Model/InternetConnectionCHecker.dart';
import 'package:permission_handler/permission_handler.dart' as per;
import 'package:flutter_offline/flutter_offline.dart';

import 'HomepageScreen/HomePageBody.dart';
import 'HomepageScreen/HomePageDrawer.dart';
import 'HomepageScreen/HomePageFloatingButton.dart';
import 'HomepageScreen/HomrpageAppBar.dart';


class Homepage extends StatefulWidget {

  HomepageAppBar aPpbar = HomepageAppBar();
  HomePageFloatingButtion fLoatingButtton = HomePageFloatingButtion();
  ConnectionChecker bOdy = ConnectionChecker( HomePageBody());

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  void initState() {
    InternetShowDialougeBox.getConnectivity(context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: widget.aPpbar,
      ),
      body: widget.bOdy,
      floatingActionButton: widget.fLoatingButtton,
    );
  }
}
