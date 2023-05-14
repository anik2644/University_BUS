import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

class LoadIndicator extends StatefulWidget {
  const LoadIndicator({Key? key}) : super(key: key);

  @override
  State<LoadIndicator> createState() => _LoadIndicatorState();
}

class _LoadIndicatorState extends State<LoadIndicator> {

  Future openDialouge() => showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
              height: 200,
              width: 200,
              child: Center(child: CircularProgressIndicator()))
      ));


  @override
  Widget build(BuildContext context) {
    return openDialouge();
  }
}


 */
class LoadingIndicator{

  BuildContext context;
  LoadingIndicator(this.context);

  Future openDialouge() => showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
              height: 200,
              width: 200,
              child: Center(child: CircularProgressIndicator()))
      ));


}
