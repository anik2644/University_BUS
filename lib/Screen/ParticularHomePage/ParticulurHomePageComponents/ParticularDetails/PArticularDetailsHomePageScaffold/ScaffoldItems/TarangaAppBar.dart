import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../Model/StaticPart/ModelStatic.dart';

class TarangaAppbar extends StatefulWidget {


  @override
  State<TarangaAppbar> createState() => _TarangaAppbarState();
}

class _TarangaAppbarState extends State<TarangaAppbar> {


  @override
  Widget build(BuildContext context) {
    return  AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
       ModelStatic.particularAppbarText
      ,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.black,
    );
  }
}
