import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../constants.dart';

class Livelocationn extends StatefulWidget {
  const Livelocationn({Key? key}) : super(key: key);

  @override
  State<Livelocationn> createState() => _LivelocationnState();
}


class _LivelocationnState extends State<Livelocationn> {

  var chatDocId;
  String mystr=' location here';
  late String lat,long;
  List<LatLng> polylineCoordinates = [];
  static const LatLng sourceLocation = LatLng(23.766324199523343, 90.3685381389092);
  static const LatLng destination = LatLng(23.725720007917214, 90.4027387200519);
  static const LatLng my = LatLng(23.8, 90.4);
//  LatLng current = LatLng(Myhomepage.llat.toDouble(), Myhomepage.llong.toDouble());
  LatLng current = LatLng(30.4, 90.4);



  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result= await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude,sourceLocation.longitude),
      PointLatLng(my.latitude,my.longitude),);

    if(result.points.isNotEmpty)
    {
      print("not empty");
      result.points.forEach(
              (PointLatLng point) => polylineCoordinates.add(
            LatLng(point.latitude, point.longitude),
          )
      );
      setState(() {});
    }
    else
    {
      print("empty");
    }
  }


  void _liveLocation() {


    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 1,

    );

    print('AllStaticVariables.mapshareflag:  $AllStaticVariables.mapshareflag');
    print(AllStaticVariables.mapshareflag);

   // if (AllStaticVariables.mapshareflag == 1) {
    //  print("with come");

    Geolocator.getPositionStream(locationSettings: locationSettings).listen((
        Position position) async {
      print('AllStaticVariables.mapshareflag:  $AllStaticVariables.mapshareflag');
      print(AllStaticVariables.gps_share_flag);

      if (AllStaticVariables.gps_share_flag == 1) {

        print("with come");
        int time_flag=1;

        DateTime current_time = new DateTime.now();

        if(current_time.year>AllStaticVariables.start_time.year)
          {
            time_flag =0;
          }
        else if(current_time.month>AllStaticVariables.start_time.month)
        {
          time_flag =0;
        }
        else if(current_time.day>AllStaticVariables.start_time.day)
        {
          time_flag =0;
        }
        else if(current_time.hour>AllStaticVariables.start_time.hour+4)
        {
          time_flag =0;
        }
        
        //
        // else if(current_time.minute>AllStaticVariables.start_time.minute)
        // {
        //   time_flag =0;
        // }

        if(time_flag==0)
          {
            AllStaticVariables.gps_share_flag=0;
           // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondaryHomepage()));
           // Restart.restartApp(webOrigin: '[your main route]');
            print("app will restart");
          }
        // // else if(current_time.minute>AllStaticVariables.start_time.minute+2)
        // // {
        // //   time_flag =0;
        // // }
        // // else if(current_time.second>AllStaticVariables.start_time.second)
        // // {
        // //   time_flag =0;
        // // }
        // //
        // print(current_time);
        // print(time_flag);
        // print("i am time flag");
        // // // DateTime date = new DateTime(now.year, now.month, now.day);



        lat = position.latitude.toString();
      long = position.longitude.toString();
      //print(chatDocId);
      print(AllStaticVariables.selectedtrip);


      //   if (AllStaticVariables.mapshareflag == 1) {
      /*
           AllStaticVariables.selectedtrip
          await FirebaseFirestore.instance.collection("Location").doc(chatDocId).update({
            'currentLocation' : GeoPoint(position.latitude,position.longitude)
            */







      await FirebaseFirestore.instance.collection("Location").doc(
          AllStaticVariables.selectedtrip).update({
        'currentLocation': GeoPoint(position.latitude, position.longitude)
      });








      //  }


      setState(() {
        // print('$lat');
        // print('$long');
        mystr = 'lat: $lat , lon: $long';
        current = LatLng(position.latitude, position.longitude);
      });
    }

    });
 // }

  }

 // LocationData?  currentlocation ;
  Future<Position> getCurrentLocation() async
   {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled)
    {
      LocationPermission permission = await Geolocator.checkPermission();
      if(permission==LocationPermission.denied)
      {
        return Future.error('Location permission denied');
      }
      if(permission== LocationPermission.deniedForever)
      {
        return Future.error('Location permanently denied');
      }
      return await Geolocator.getCurrentPosition();
      //return Future.error('Location service disabled');
    }


    LocationPermission permission = await Geolocator.checkPermission();
    if(permission==LocationPermission.denied)
    {
      permission = await Geolocator.requestPermission();
      if(permission== LocationPermission.denied)
      {
        return Future.error('Location permission denied');
      }
    }
    if(permission== LocationPermission.deniedForever)
    {
      return Future.error('Location permanently denied');
    }
    return await Geolocator.getCurrentPosition();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if(AllStaticVariables.gps_share_flag==1)
      {
        //-_liveLocation();

        getCurrentLocation().then((value) async {
          lat = '${value.latitude}';
          long = '${ value.longitude}';
          _liveLocation();
          setState(() {
            mystr = 'lat: $lat , lon: $long';
            current = LatLng(value.latitude, value.longitude);
          });
        });

      }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
      //  Navigator.push(context, MaterialPageRoute(builder: (context) => BusDetailsHomePage()));

        return Future.value(false);

      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          flexibleSpace: Container(
            color: Colors.orange,
            child:  Center(child: Text(mystr, style: TextStyle(fontSize: 20,),)),
          ),
        ),


        body:GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(23.740638691083213, 90.3941469763651),
              zoom: 17),
          polylines:{
            Polyline(
              polylineId: PolylineId("route"),
              points: polylineCoordinates,
              color: Colors.yellow,
              width:6,
            )

          } ,
            markers: {
          //  const Marker(markerId: MarkerId("source"),position: sourceLocation),

            // Marker(markerId: const MarkerId("currentLocation"),position: LatLng(currentlocation!.latitude!.toDouble(), currentlocation!.longitude!.toDouble()),),
            // const Marker(markerId: MarkerId("destination"),position: destination),
            //const Marker(markerId: MarkerId("my"),position: my),
              Marker(markerId: const MarkerId("current"),position: current),
          },
        ),

        floatingActionButton: AllStaticVariables.gps_share_flag == 0? FloatingActionButton.extended(onPressed: () {
          getCurrentLocation().then((value) async {
            AllStaticVariables.mapshareflag=1;
            AllStaticVariables.gps_share_flag=1;
            AllStaticVariables.start_time = new DateTime.now();
            _liveLocation();
          });



        },label:  Text(" Share Location "),
          icon: Icon(Icons.location_on),
        ) : null,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
