import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LocationView extends StatefulWidget {
  LocationView(double llat, double llong);



  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {

  double llat=24.0,llong=85.36;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("anik"),
      ),
      body: GoogleMap(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
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




        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
