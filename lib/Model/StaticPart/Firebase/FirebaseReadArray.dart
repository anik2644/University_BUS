import 'package:cloud_firestore/cloud_firestore.dart';

import '../BusStaticVariables.dart';
import '../FirabaseStaticVariables.dart';
import '../ModelStatic.dart';

class FirebaseReadArray{


  static Future<void> loadNoticeAndTripswithFlag()  async {

    BusStaticVariables.Uptrips.clear();
    BusStaticVariables.Downtrips.clear();
    BusStaticVariables.locShare.clear();
    List <String> lc= [];


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
      // List.from(docSnapshot.get('locShare')).forEach((element) {
      //   String data = element;
      //   BusStaticVariables.locShare.add(data);
      // });

      List.from(docSnapshot.get('locShare')).forEach((element) {
        String data = element;
        lc.add(data);
      });

      BusStaticVariables.Notice = docSnapshot.data()!['notice'];
    }

    ModelStatic.locTimeFlag();
    for(int i=0;i<BusStaticVariables.Uptrips.length;i++)
      {
        BusStaticVariables.locShare[i]= lc[i];
        // if(BusStaticVariables.locShare[i] == "1")
        //   {
        //     BusStaticVariables.locShare[i]= lc[i];
        //   }
      }

  }


  static Future<void> loadLocShreFlag()  async {

    BusStaticVariables.locShare.clear();
    BusStaticVariables.Password.clear();
    List <String> lc= [];


    var docSnapshot = await FirebaseFirestore.instance.collection("schedule")
        .doc(FirebaseStaticVAriables.selected_schedule_id).get();

    if (docSnapshot.exists) {
      List.from(docSnapshot.get('locShare')).forEach((element) {
        String data = element;
       lc.add(data);
      });
      List.from(docSnapshot.get('password')).forEach((element) {
        String data = element;
        BusStaticVariables.Password.add(data);
      });

    }

    ModelStatic.locTimeFlag();
    for(int i=0;i<BusStaticVariables.Uptrips.length;i++)
    {
      print(BusStaticVariables.locShare.length);
      print(lc.length);
      BusStaticVariables.locShare[i]= lc[i];
      // if(BusStaticVariables.locShare[i] == "1")
      // {
      //   BusStaticVariables.locShare[i]= lc[i];
      // }
    }


  }

}