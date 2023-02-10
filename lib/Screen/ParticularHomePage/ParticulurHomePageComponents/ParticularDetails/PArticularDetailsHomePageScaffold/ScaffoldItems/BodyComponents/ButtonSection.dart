import 'package:campousia/Screen/ParticularHomePage/ParticulurHomePageComponents/ParticularDetails/PArticularDetailsHomePageScaffold/ScaffoldItems/BodyComponents/Chat/MessageScreen.dart';
import 'package:campousia/Screen/ParticularHomePage/ParticulurHomePageComponents/ParticularDetails/PArticularDetailsHomePageScaffold/ScaffoldItems/BodyComponents/Route/RouteView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../Model/ModelClasses/Bus.dart';

class ButtonSection extends StatefulWidget {


  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              color: Colors.blue,
              Icons.person,
            ),
            onPressed: () async {
              //     FlutterPhoneDirectCaller.callNumber(hotel_number);
            },
          ),
          IconButton(
            icon: Icon(
              color: Colors.blue,
              Icons.chat,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesScreen() ));
            },
          ),
          IconButton(
            icon: Icon(
              color: Colors.blue,
              Icons.location_on,
            ),
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => RouteView() ));


            /*
              onPressed: () {

              },
              AlertDialog alert = AlertDialog(
                title: Text('Location:'),
                content: Text(Bus.busList[Bus.selectedBus].location),
              );
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alert;
                },
              );

              */
            },
          ),
        ],
      ),
    );
  }
}
