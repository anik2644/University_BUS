import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userapp/ParticularDetails/TarangaBusBody/UPtripsDowntrips/LocationSharePopup.dart';
import 'package:userapp/SecondaryHomePage/SecondaryBody.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:userapp/StaticPart/FirabaseStaticVariables.dart';
import 'package:userapp/StaticPart/Firebase/FirebaseFetchId.dart';
import 'package:userapp/StaticPart/ModelStatic.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart' as loc;
import '../../../Maps/Location_view_templete.dart';
import '../../../StaticPart/BusStaticVariables.dart';

class ScheduleButton extends StatefulWidget {
  int index;
  String time, ud;
  ScheduleButton(this.index,this.time,this.ud);

  @override
  State<ScheduleButton> createState() => _ScheduleButtonState();
}

class _ScheduleButtonState extends State<ScheduleButton> {


  Future<Position> openLocationSetting() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.always) {
        print("always use");
        await Geolocator.getCurrentPosition();
        //return Future.error('Location while in use');
      }

      if (permission == LocationPermission.whileInUse) {
        await Geolocator.openAppSettings();
        await Geolocator.getCurrentPosition();
        print("uing app");
        // return Future.error('Location while in use');
      }

      if (permission == LocationPermission.denied) {
        await Geolocator.openAppSettings();
        await Geolocator.getCurrentPosition();
        //return Future.error('Location permission denied');
      }
      if (permission == LocationPermission.deniedForever) {
        await Geolocator.openAppSettings();
        await Geolocator.getCurrentPosition();
        //return Future.error('Location permanently denied');
      }
      // return await Geolocator.getCurrentPosition();
      //return Future.error('Location service disabled');
    } else if (serviceEnabled) {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.always) {
        print("always use");
        await Geolocator.getCurrentPosition();
        //return Future.error('Location while in use');
      }

      if (permission == LocationPermission.whileInUse) {
        await Geolocator.openAppSettings();
        await Geolocator.getCurrentPosition();
        print("uing app");
        // return Future.error('Location while in use');
      }

      if (permission == LocationPermission.denied) {
        await Geolocator.openAppSettings();
        await Geolocator.getCurrentPosition();
        //return Future.error('Location permission denied');
      }
      if (permission == LocationPermission.deniedForever) {
        await Geolocator.openAppSettings();
        await Geolocator.getCurrentPosition();
        //return Future.error('Location permanently denied');
      }
      //return await Geolocator.getCurrentPosition();
      //return Future.error('Location service disabled');
    }
    return await Geolocator.getCurrentPosition();
  }


  late double llat,llong;
  Future<void> locfetch()
  async {
    var docSnapshot= await FirebaseFirestore.instance.collection("Location").doc(FirebaseStaticVAriables.selected_location_id).get();
    if (docSnapshot.exists) {

      print(docSnapshot.data());
      GeoPoint position = docSnapshot.get('currentLocation');
      print(position.longitude.toString());

      setState(() {

        llong= position.longitude.toDouble();
        llat =position.latitude.toDouble();
        // appbartext= appbartext;
      });

    }
  }

  void _locationVIew () async {
    BusStaticVariables.busName = "Taranga";
    BusStaticVariables.sch = widget.time;
    BusStaticVariables.upDown = widget.ud;

    await FirebaseFetchId.getLocationDocID();
    await locfetch();
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LocationView(llat,llong)));
    });

  }

  void _shareLocation () async {
    ModelStatic.locSharePopupFlag=1;
  BusStaticVariables.busName = "Taranga";
  BusStaticVariables.sch = widget.time;
  BusStaticVariables.upDown = widget.ud;

  openLocationSetting().then((value) {});

  if (ModelStatic.gps_share_flag == 0)
  {
  await FirebaseFetchId.getLocationDocID();
  setState(() {

    print(FirebaseStaticVAriables.selected_location_id);
    LocationSharePopup popup =LocationSharePopup(context,widget.index);
    popup.openDialouge(widget.index);

  });

  }

}


ButtonStyle Style()
{
  return OutlinedButton.styleFrom(
    side: widget.ud == "down"
        ? BorderSide(width: 5.0, color: Colors.black26)
        : BusStaticVariables.locShare[widget.index] == "1"
        ? BorderSide(width: 5.0, color: Colors.blue)
        : BusStaticVariables.locShare[widget.index] == "0"
        ? BorderSide(width: 5.0, color: Colors.green)
        : BorderSide(width: 5.0, color: Colors.black26),
  );
}


@override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          SizedBox(
            width: 6,
          ),
            OutlinedButton(
        style: Style(),
        onPressed: widget.ud == "down" ? null
            : BusStaticVariables.locShare[widget.index] == "0"
            ? (){_locationVIew ();}
            : BusStaticVariables.locShare[widget.index] == "1"
            ? (){_shareLocation ();}
            : null,
        child: Text(
          widget.time,
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
      ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
    );

  }



}
