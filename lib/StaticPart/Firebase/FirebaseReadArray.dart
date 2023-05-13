import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:userapp/StaticPart/BusStaticVariables.dart';
import 'package:userapp/StaticPart/FirabaseStaticVariables.dart';

class FirebaseReadArray{


  static Future<void> loadNoticeAndTripswithFlag()  async {

    BusStaticVariables.Uptrips.clear();
    BusStaticVariables.Downtrips.clear();
    BusStaticVariables.locShare.clear();


    var docSnapshot = await FirebaseFirestore.instance.collection("schedule")
                                 .doc(FirebaseStaticVAriables.selected_schedule_id).get();


    if (docSnapshot.exists) {
      List.from(docSnapshot.get('up')).forEach((element) {
        String data = element;
        BusStaticVariables.Uptrips.add(data);
      });
      List.from(docSnapshot.get('down')).forEach((element) {
        String data = element;
        BusStaticVariables.Downtrips.add(data);
      });
      List.from(docSnapshot.get('locShare')).forEach((element) {
        String data = element;
        BusStaticVariables.locShare.add(data);
      });

      BusStaticVariables.Notice = docSnapshot.data()!['notice'];
    }

  }


  static Future<void> loadLocShreFlag()  async {

    BusStaticVariables.locShare.clear();
    BusStaticVariables.Password.clear();


    var docSnapshot = await FirebaseFirestore.instance.collection("schedule")
        .doc(FirebaseStaticVAriables.selected_schedule_id).get();

    if (docSnapshot.exists) {
      List.from(docSnapshot.get('locShare')).forEach((element) {
        String data = element;
        BusStaticVariables.locShare.add(data);
      });
      List.from(docSnapshot.get('password')).forEach((element) {
        String data = element;
        BusStaticVariables.Password.add(data);
      });

    }

  }

}