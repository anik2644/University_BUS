  import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import 'Model/ModelClasses/Bus.dart';
import 'Screen/HomePage/HomePage.dart';

Future<void> main() async {

  Bus.selectedBus= 3;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primarySwatch: Colors.blue,),
      home: Homepage(),
    );
  }
}
/*

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/