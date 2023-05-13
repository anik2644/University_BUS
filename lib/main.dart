import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:userapp/SecondaryHomePage/SecondaryBody.dart';
import 'package:userapp/Test/test.dart';
import 'HomePageComponent/HomePage.dart';

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
      home: Homepage(),//Test(),//Homepage(),
    );
  }
}
