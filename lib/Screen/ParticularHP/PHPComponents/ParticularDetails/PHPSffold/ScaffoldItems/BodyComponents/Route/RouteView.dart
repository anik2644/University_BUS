import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class RouteView extends StatefulWidget {
  const RouteView({Key? key}) : super(key: key);

  @override
  State<RouteView> createState() => _RouteViewState();
}

class _RouteViewState extends State<RouteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
    options: MapOptions(
    center: LatLng(23.744516405644802, 90.3723559555749),
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
    MarkerLayer( markers: [
      Marker
        (point:LatLng(23.763189353502426, 90.36586382952628) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
      Marker
        (point:LatLng(23.75884128259024, 90.36497000998382) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
      Marker
        (point:LatLng(23.75707619700285, 90.36200670180153) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
      Marker
        (point:LatLng(23.75104895026313, 90.36835663122193) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
      Marker
        (point:LatLng(23.745925540903972, 90.37179030867637) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ), Marker
        (point:LatLng(23.744127204319987, 90.37256585865306) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ), Marker
        (point:LatLng(23.739457428542774, 90.37530458996805) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ), Marker
        (point:LatLng(23.73316520899645, 90.39066283889422) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ), Marker
        (point:LatLng(23.732624505993996, 90.39458304866238) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
      Marker
        (point:LatLng(23.72761011772169, 90.39732164271581) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
      Marker
        (point:LatLng(23.72795411973503, 90.4002214431472) ,
          builder: (context) => Icon(Icons.pin_drop, color: Colors.red ,size: 50,)
      ),
    ],)
    //new MarkerLayerOptions(markers: ),

    ],


    ),
    );
  }
}
