import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {

  int count =0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(count.toString()),
        ),
        OutlinedButton(onPressed:() {
          count++;
          setState(() {
            
          });
        }, child: Text("press"))
      ],
    );
  }
}
