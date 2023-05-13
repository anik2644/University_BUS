import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userapp/BusDetails/Bd.dart';
import 'package:userapp/BusDetails/BusDetailsBody.dart';
import 'package:userapp/Maps/Location_view_templete.dart';
import 'package:userapp/SecondaryHomePage/SecondaryBody.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BusDetailsHomePage extends StatefulWidget {

  @override
  State<BusDetailsHomePage> createState() => _BusDetailsHomePageState();
}

class _BusDetailsHomePageState extends State<BusDetailsHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Bus.busList[Bus.selectedBus].name,
          style: const TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.black,
      ),

      body: BD(),
      backgroundColor: Colors.white,

      /*
      floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.location_on_rounded),
            label: Text("Track Location"),
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LocationView()));
            }
            )


       */
    );
  }
}
