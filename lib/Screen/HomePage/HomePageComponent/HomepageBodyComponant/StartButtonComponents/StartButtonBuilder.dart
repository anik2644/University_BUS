import 'package:campousia/Screen/HomePage/HomePageComponent/HomepageBodyComponant/StartButtonComponents/StartButtonBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Model/StaticPart/FirabaseStaticVariables.dart';
import '../../../../../Model/StaticPart/ModelStatic.dart';
import '../../../../Model/LoadIndicator.dart';
import '../../../../ParticularHomePage/ParticulurHomePage.dart';

class StartButtonBuilder extends StatefulWidget {

  StartButtonBody bOdy = StartButtonBody();

  @override
  State<StartButtonBuilder> createState() => _StartButtonBuilderState();
}

class _StartButtonBuilderState extends State<StartButtonBuilder> {


  Future<void> StartButtonOnPressed() async {

      FirebaseStaticVAriables.isLoading= false ;
      if(!FirebaseStaticVAriables.isLoading)
      {
        LoadingIndicator oPenDialouge = new LoadingIndicator(context);
        oPenDialouge.openDialouge();
      }
      await ModelStatic.particularBusDataLoad();

      setState(() {
        if(FirebaseStaticVAriables.isLoading)
        {
          FirebaseStaticVAriables.isLoading=!FirebaseStaticVAriables.isLoading;
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ParticulurHomePage()));
         }
      });


    }



  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: StartButtonOnPressed,
      child: widget.bOdy,
    );
  }
}
