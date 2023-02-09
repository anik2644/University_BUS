import 'package:cloud_firestore/cloud_firestore.dart';

import '../BusStaticVariables.dart';
import '../FirabaseStaticVariables.dart';
class FirebaseLocationWrite{

 static Future<void> locationWrite(double  latitude,double longitude)
 async {
   await FirebaseFirestore.instance
       .collection("Location")
       .doc(FirebaseStaticVAriables.selected_location_id)
       .update({
     'currentLocation': GeoPoint(latitude!, longitude!)
   });

 }

}