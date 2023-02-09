import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import '../Model/InternetConnectionCHecker.dart';
import '../Model/InternetShowDialougeBox.dart';
import 'HomePageComponent/HomePageBody.dart';
import 'HomePageComponent/HomePageDrawer.dart';
import 'HomePageComponent/ResetFirebaseData.dart';
import 'HomePageComponent/HomrpageAppBar.dart';

class Homepage extends StatefulWidget {

  HomepageAppBar aPpbar = HomepageAppBar();
  HomePageFloatingButtion fLoatingButtton = HomePageFloatingButtion();
  ConnectionChecker bOdy = ConnectionChecker( HomePageBody());

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {

  @override
  void initState() {
    InternetShowDialougeBox.getConnectivity(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: PreferredSize(preferredSize: Size.fromHeight(80), child: widget.aPpbar,),
      body: widget.bOdy,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          Location lc = new Location();

          lc.changeSettings(accuracy: LocationAccuracy.balanced, distanceFilter: 1);
          lc.enableBackgroundMode(enable: true);
          lc.onLocationChanged.listen(
                  (LocationData currentLocation) async {
                print(currentLocation.latitude!);
                print( currentLocation.longitude!);
              }
          );

          // print("object");
          //   //
          //   // loc.Location location = new loc.Location();
          //   // print("Locstion to be shared5");
          //   // location.enableBackgroundMode(enable: true);
          //   // print("Locstion to be shared6");
          //   // await location.changeSettings(accuracy: loc.LocationAccuracy.low, distanceFilter: 1);
          //   // //
          //   // print("Locstion to be shared7");
          //   //  location.onLocationChanged.listen(
          //   //         (loc.LocationData currentLocation) async {
          //   //       print("Locstion to be shared8");
          //   //
          //   //       print(currentLocation.latitude!);
          //   //       print( currentLocation.longitude!);
          //   //      // FirebaseLocationWrite.locationWrite( currentLocation.latitude!, currentLocation.longitude!);
          //   //
          //   //     });
          //   //
          //   //
          //   //
          //   //
          //
          // // Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
          // //
          // // String latitude = position.latitude.toString();
          // // String longitude = position.longitude.toString();
          // // print(latitude);
          // // print(longitude);
          //
          // bg.BackgroundGeolocation.ready(
          //   bg.Config(
          //     desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
          //     distanceFilter: 1,
          //     stopOnTerminate: false,
          //     startOnBoot: true,
          //   )).then((bg.State state) {
          //     if (!state.enabled) {
          //       ////
          //       // 3.  Start the plugin.
          //       //
          //       bg.BackgroundGeolocation.start();
          //
          //       bg.BackgroundGeolocation.onLocation((bg.Location location) {
          //         print('[location] - $location');
          //       });
          //
          //       // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
          //       bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
          //         print('[motionchange] - $location');
          //       });
          //     }
          //   });

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
