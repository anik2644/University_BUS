import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../../Model/StaticPart/BusStaticVariables.dart';
import '../../../../../../Model/StaticPart/FirabaseStaticVariables.dart';
import '../../../../../../Model/StaticPart/ModelStatic.dart';
import '../../../../ParticulurHomePage.dart';

class TarangaFloatingButton extends StatefulWidget {

  @override
  State<TarangaFloatingButton> createState() => _TarangaFloatingButtonState();
}

class _TarangaFloatingButtonState extends State<TarangaFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton.extended(

      icon: Icon(Icons.backspace_sharp),
      label: Text('Stop Share'),
      backgroundColor: Colors.red,
      onPressed: () async {

        ModelStatic.gps_share_flag=0;
        ModelStatic.particularAppbarText = BusStaticVariables.busName;
        BusStaticVariables.locShare[ModelStatic.location_share_schedule_index]="2";
        //print(AllStaticVariables.chatDocId);
        await FirebaseFirestore.instance.collection('schedule').doc(FirebaseStaticVAriables.selected_schedule_id)
            .update({
          "locShare": BusStaticVariables.locShare
        });

        Location.instance.enableBackgroundMode(enable: false);
        ModelStatic.locationSubscription.cancel();

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ParticulurHomePage() ));
      },

    );
  }
}
