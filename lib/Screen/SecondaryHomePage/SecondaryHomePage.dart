import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'SecondaryBody.dart';
import 'SecondaryDrawer.dart';

class SecondaryHomepage extends StatefulWidget {
  const SecondaryHomepage({Key? key}) : super(key: key);

  @override
  State<SecondaryHomepage> createState() => _SecondaryHomepageState();
}

class _SecondaryHomepageState extends State<SecondaryHomepage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: RefreshIndicator(
              child: SecondaryBody(),
              onRefresh: () async {
              }),

         // drawer: SecondaryHomapageDrawer()
        ),


    );
  }
}
