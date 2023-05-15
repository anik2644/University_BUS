import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartButtonBody extends StatefulWidget {


  @override
  State<StartButtonBody> createState() => _StartButtonBodyState();
}

class _StartButtonBodyState extends State<StartButtonBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: double.infinity,


      color: Colors.black,
      child: Center(
          child: Text(
            "Press me to enter",
            style: TextStyle(fontSize: 25,color: Colors.white),
          )),
    );
  }
}
