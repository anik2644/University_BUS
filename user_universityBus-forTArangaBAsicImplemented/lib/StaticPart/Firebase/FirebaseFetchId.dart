import 'package:cloud_firestore/cloud_firestore.dart';

import '../BusStaticVariables.dart';
import '../FirabaseStaticVariables.dart';

class FirebaseFetchId {
  static Future<String> getScheduleDocID(String busName) async {
    String docId = "nothing here";

    await FirebaseFirestore.instance
        .collection('schedule')
        .where('name', isEqualTo: {'busName': busName})
        .limit(1)
        .get()
        .then((QuerySnapshot querySnapshot) async {
          if (querySnapshot.docs.isNotEmpty) {
            docId = querySnapshot.docs.single.id;
          } else {
            print("no data found");
          }
        })
        .catchError((error) {});

    FirebaseStaticVAriables.selected_schedule_id = docId;

    return docId;
  }

  static Future<void> getLocationDocID() async {


    CollectionReference Loc = FirebaseFirestore.instance.collection('Location');


    await FirebaseFirestore.instance.collection('Location').where('trip', isEqualTo: {
      BusStaticVariables.busName: null,
      BusStaticVariables.sch: null,
      BusStaticVariables.upDown: null,
    }).limit(1).get().then(
      (QuerySnapshot querySnapshot) async {
        if (querySnapshot.docs.isNotEmpty) {
           FirebaseStaticVAriables.selected_location_id = querySnapshot.docs.single.id;
          print(FirebaseStaticVAriables.selected_location_id);
          print("Got it");
        } else {
          print("vacant");
          await Loc.add({
            'trip': {
              BusStaticVariables.busName: null,
              BusStaticVariables.sch: null,
              BusStaticVariables.upDown: null,
            },
            'currentLocation': GeoPoint(34.4, 90.4),
          }).then((value) => {
                FirebaseStaticVAriables.selected_location_id = value.id,
                print("my"),
              });
        }
      },
    ).catchError((error) {});
  }


}
