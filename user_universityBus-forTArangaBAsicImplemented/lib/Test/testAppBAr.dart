import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tstAPpbar extends StatefulWidget {

 late int count;
 late int check;
  String hello ="hello";
  tstAPpbar(this.count){
    check =count;
  }


  @override
  State<tstAPpbar> createState() => _tstAPpbarState();
}

class _tstAPpbarState extends State<tstAPpbar> {



  void fun()
  {
    print("i am anik");
  }
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(widget.count.toString()),);
  }
}
