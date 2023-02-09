import 'package:campousia/Screen/ParticularHomePage/ParticulurHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../../../../../../../../Model/StaticPart/FirabaseStaticVariables.dart';



class LocationView extends StatefulWidget {

  double latCenter, lonCenter;
  LocationView(this.latCenter,this.lonCenter);

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {


  @override
  void initState() {
    // TODO: implement initState
    llong= widget.lonCenter;
    llat= widget.latCenter;
    super.initState();
  }

  Widget MyBody()
  {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(widget.latCenter, widget.lonCenter),
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


  double llat=23.74,llong=90.4;
  var Selected_bus_location_id;
  String appbartext="Press the below icon";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () async{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ParticulurHomePage()));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(appbartext),
        ),
        body: Builder(
            builder: (BuildContext context) {
              return OfflineBuilder(
                connectivityBuilder: (BuildContext context,
                    ConnectivityResult connectivity, Widget child) {
                  final bool connected = connectivity != ConnectivityResult.none;
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      child,
                      Positioned(
                        left: 0.0,
                        right: 0.0,
                        height: 32.0,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          color:
                          connected ?/* Color(0xFF00EE44) */ null : Color(0xFFEE4400),
                          child: connected
                              ? null

                              : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "OFFLINE",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              SizedBox(
                                width: 12.0,
                                height: 12.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.0,
                                  valueColor:
                                  AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                child:  MyBody(),);}),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {

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
          },
          tooltip: 'Increment',
          child: const Icon(Icons.location_on_sharp),
        ),
      ),
    );
  }

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
/*
  Future<void> _find_Selected_bus_location_id()
  async {
    CollectionReference Loc = FirebaseFirestore.instance.collection('Location');

    await Loc.where('trip', isEqualTo: {
      BusStaticVariables.busName: null,
      BusStaticVariables.sch: null,
      BusStaticVariables.upDown: null,
    }).limit(1).get().then((QuerySnapshot querySnapshot) async {
      if (querySnapshot.docs.isNotEmpty) {
        Selected_bus_location_id = querySnapshot.docs.single.id;
        print("object");
        print(Selected_bus_location_id);
        print("Got it");
        appbartext= "Location shared";
      } else {
        appbartext= "Location not shared";
        print("vacant");
      }
    },
    ).catchError((error) {});


  }

 */
}
