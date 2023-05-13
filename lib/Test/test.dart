import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:userapp/StaticPart/Firebase/FirebaseUpdate.dart';
import 'package:userapp/Test/Test1.dart';
import 'package:userapp/Test/testAppBAr.dart';
import '../SecondaryHomePage/SecondaryBody.dart';
import '../StaticPart/Firebase/FirebaseFetchId.dart';
import '../Taranga/TarangaBusBody.dart';
import '../constants.dart';

class Test extends StatefulWidget {
  int cnt =0;
  tstAPpbar aPpbar= new tstAPpbar(0);
  static List<String> locShare=   <String> ['0','1','1','1','1','0','1','1','1'];


  @override
  State<Test> createState() => _TestState(cnt);
}

class _TestState extends State<Test> {

  _TestState(this.cnt);
   int cnt;

  Test1 tst = new Test1();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: widget.aPpbar,
      ),// AppBar(title: Text("done"),),
      body:tst,
      floatingActionButton: FloatingActionButton(onPressed: () async {
        // cnt++;
        // widget.aPpbar.count = cnt;
        //
        //
        // // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> super.widget));

       String docid= await FirebaseFetchId.getScheduleDocID("Taranga") as String;
       print(docid);
       FirebaseUpdate.updateScheduleArray(docid,"locShare");
      }

      ),
    );
  }
}
