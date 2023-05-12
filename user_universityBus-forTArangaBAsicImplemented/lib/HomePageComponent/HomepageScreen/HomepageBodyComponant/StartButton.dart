import 'package:userapp/Model/LoadIndicator.dart';
import 'package:userapp/StaticPart/FirabaseStaticVariables.dart';
import 'package:userapp/StaticPart/ModelStatic.dart';
import 'package:userapp/Taranga/TarangaHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartBUtton extends StatefulWidget {

  @override
  State<StartBUtton> createState() => _StartBUttonState();
}

class _StartBUttonState extends State<StartBUtton> {


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () async {

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
           // FirebaseStaticVAriables.isLoading=!FirebaseStaticVAriables.isLoading;
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => TarangaHomePage()));
          }
        });


      },
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Center(
            child: Text(
              "Press me to enter",
              style: TextStyle(fontSize: 25),
            )),
      ),
    );
  }
}
