import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomepageBodyComponant/AdvertisePortion.dart';
import 'HomepageBodyComponant/StartButton.dart';


class HomePageBody extends StatefulWidget {

  StartBUtton sTartbutton = new StartBUtton();
  AdvertisePortion aDvertiseportion = new AdvertisePortion();

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          widget.sTartbutton,
          widget.aDvertiseportion,
        ],
      ),
    );
  }
}
