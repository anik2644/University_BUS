import 'package:cloud_firestore/cloud_firestore.dart';

import '../BusStaticVariables.dart';
import '../FirabaseStaticVariables.dart';

class FirebaseUpdate{

  static Future<void> updateScheduleArray(String docId, String FieldName) async {

    List<String> locShare=   <String> ['2','0','1','1','1','1','1','1','1'];
    List<String> up=   <String> ['7.00','7.30','8.00','8.30','9.10','10.10'];
    List<String> down=   <String> ['12.15','1.30','2.20','3.30','4.30','5.00','5.30','5.35'];
    List<String> password = <String> ['7.00','7.30','8.00','8.30','9.10','10.10'];
    await FirebaseFirestore.instance.collection('schedule').doc(docId).update({
      FieldName: locShare ,
      'up': up,
      'down': down,
      'password': password,
    });

  }

  static Future<void> updateLocshareAndNotice() async {


    await FirebaseFirestore.instance
        .collection('schedule')
        .doc(FirebaseStaticVAriables.selected_schedule_id)
        .update({
      "locShare": BusStaticVariables.locShare,
      'notice': BusStaticVariables.Notice
    });

  }

}