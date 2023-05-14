import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import 'package:flutter_map/flutter_map.dart';
//import "package:latlong/latlong.dart" as latLng;
import 'package:latlong2/latlong.dart';

import '../../StaticPart/BusStaticVariables.dart';


class LocationView extends StatefulWidget {


  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {


  Widget MyBody()
  {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(23.74, 90.4),
        zoom: 15,
        maxZoom: 18,
        //minZoom: 10

      ),

      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: null,
        ),
      ],

      children: [

        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
          // MarkerLayerOptions(),
        ),
        // CircleMarker(point: point, radius: radius),
        // MarkerLayer( markers: CircleMarker(point: point, radius: radius) ,)
        MarkerLayer( markers: [ Marker(point:LatLng(llat.toDouble(), llong.toDouble()) , builder: (context) => Icon(Icons.gps_fixed, color: Colors.red ,size: 50,)) ],)
        //new MarkerLayerOptions(markers: ),

      ],


    );
  }


  double llat=24.0,llong=85.36;
  var chatDocId;
  String appbartext="anik";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbartext),
      ),
      body: MyBody(),
      /*
      GoogleMap(
        initialCameraPosition: CameraPosition(
          //target:  current,
            target: LatLng(
                24.0, 85.36
            ),
            zoom: 2),
        polylines:{
          // Polyline(
          //   polylineId: PolylineId("route"),
          //   points: polylineCoordinates,
          //   color: primaryColor,
          //   width:6,
          // )

        } ,
        markers: {
          // const Marker(markerId: MarkerId("source"),position: sourceLocation),
          // Marker(markerId: const MarkerId("current"),position: current),
          Marker(markerId: const MarkerId("currentLocation"),position: LatLng(llat.toDouble(), llong.toDouble()),),
          // const Marker(markerId: MarkerId("destination"),position: MyApp.destination),
          // const Marker(markerId: MarkerId("my"),position: my),
          //

        },
      ),

       */
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //
          // await FirebaseFirestore.instance.collection("test").get().then((value) => {
          //   value.docs.forEach((result)
          //   {
          //     print(result.data());
          //     GeoPoint position = result.get('anik');
          //     print(position.longitude.toString());
          //
          //
          //     setState(() {
          //       llong= position.longitude.toDouble();
          //       llat =position.latitude.toDouble();
          //
          //     });
          //   }
          //   )
          // }
          // );
/*
          var docSnapshot= await FirebaseFirestore.instance.collection("Location").doc("location").get();
          if (docSnapshot.exists) {

            print(docSnapshot.data());
            GeoPoint position = docSnapshot.get('currentLocation');
            print(position.longitude.toString());
*/


      CollectionReference Loc = FirebaseFirestore.instance.collection('Location');

      await Loc.where('trip', isEqualTo: {
        BusStaticVariables.busName: null,
        BusStaticVariables.sch: null,
        BusStaticVariables.upDown: null,
      }).limit(1).get().then((QuerySnapshot querySnapshot) async {
        if (querySnapshot.docs.isNotEmpty) {
          chatDocId = querySnapshot.docs.single.id;
          print("object");
          print(chatDocId);
          print("Got it");
          appbartext= "Location shared";
        } else {
          appbartext= "Location not shared";
          print("vacant");
        }
      },
      ).catchError((error) {});


      var docSnapshot= await FirebaseFirestore.instance.collection("Location").doc(chatDocId).get();
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

          /*

          var docSnapshot= await FirebaseFirestore.instance.collection("test").doc("location").get();
          if (docSnapshot.exists) {

            print(docSnapshot.data());
            GeoPoint position = docSnapshot.get('currentLocation');
            print(position.longitude.toString());


            setState(() {
              llong= position.longitude.toDouble();
              llat =position.latitude.toDouble();

            });

          }


           */

          setState(() {

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
