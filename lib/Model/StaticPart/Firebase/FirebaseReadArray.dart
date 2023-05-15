import 'package:campousia/Model/ModelClasses/BusTrips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../BusStaticVariables.dart';
import '../FirabaseStaticVariables.dart';
import '../ModelStatic.dart';
import 'FirebaseFetchId.dart';

class FirebaseReadArray{

  static int ind = 0;

  static Future<void> LoadAllBusData()  async {

    var docSnapshot = await FirebaseFirestore.instance.collection("schedule").get();
    int totalBus = docSnapshot.docs.length;


    print("size of schedule");
    print(docSnapshot.docs.length);


    for(int i=0;i<totalBus;i++)
      {
     //   print(BusTrips.BusNames[i]);
        FirebaseReadArray.ind =i;
        FirebaseStaticVAriables.selected_schedule_id = await FirebaseFetchId.getScheduleDocID(BusTrips.BusNames[i]) as String;
       // print(FirebaseStaticVAriables.selected_schedule_id );
        await FirebaseReadArray.loadNoticeAndTripswithFlag();

      }

    for(int i=0;i<BusTrips.busTrips.length;i++)
    {
      print(BusTrips.busTrips[i].name);
      print(BusTrips.busTrips[i].Uptrips);
      print(BusTrips.busTrips[i].locShare);
      print(BusTrips.busTrips[i].Notice);

    }

        //.doc(FirebaseStaticVAriables.selected_schedule_id).get();

    // BusStaticVariables.Uptrips.clear();
    // BusStaticVariables.Downtrips.clear();
    // BusStaticVariables.locShare.clear();
    // List <String> lc= [];
    //
    //
    // var docSnapshot = await FirebaseFirestore.instance.collection("schedule")
    //     .doc(FirebaseStaticVAriables.selected_schedule_id).get();
    //
    //
    // if (docSnapshot.exists) {
    //   List.from(docSnapshot.get('up')).forEach((element) {
    //     String data = element;
    //     BusStaticVariables.Uptrips.add(data);
    //   });
    //   List.from(docSnapshot.get('down')).forEach((element) {
    //     String data = element;
    //     BusStaticVariables.Downtrips.add(data);
    //   });
    //   // List.from(docSnapshot.get('locShare')).forEach((element) {
    //   //   String data = element;
    //   //   BusStaticVariables.locShare.add(data);
    //   // });
    //
    //   List.from(docSnapshot.get('locShare')).forEach((element) {
    //     String data = element;
    //     lc.add(data);
    //   });
    //
    //   BusStaticVariables.Notice = docSnapshot.data()!['notice'];
    // }
    //
    // ModelStatic.locTimeFlag();
    // for(int i=0;i<BusStaticVariables.Uptrips.length;i++)
    // {
    //   BusStaticVariables.locShare[i]= lc[i];
    //   // if(BusStaticVariables.locShare[i] == "1")
    //   //   {
    //   //     BusStaticVariables.locShare[i]= lc[i];
    //   //   }
    // }

  }




  static Future<void> loadNoticeAndTripswithFlag()  async {

    BusStaticVariables.Uptrips.clear();
    BusStaticVariables.Downtrips.clear();
    BusStaticVariables.locShare.clear();
    List <String> lc= [];
    List <String> tc= [];
    String ntc = "No notice so far" ;


    var docSnapshot = await FirebaseFirestore.instance.collection("schedule")
                                 .doc(FirebaseStaticVAriables.selected_schedule_id).get();


    if (docSnapshot.exists) {


     // print("in condition");


      List.from(docSnapshot.get('up')).forEach((element) {
        String data = element;
       // print(data);
        tc.add(data);
        //BusStaticVariables.Uptrips.add(data.toString());
      });

      List.from(docSnapshot.get('down')).forEach((element) {
        String data = element;
        BusStaticVariables.Downtrips.add(data);
      });

      List.from(docSnapshot.get('locShare')).forEach((element) {
        String data = element;
        lc.add(data);
      });

      if(docSnapshot.data()!['notice']!=null)
        {
          ntc =  docSnapshot.data()!['notice'];
        }
      else
        {
          ntc = "null notice";
        }
     // ntc =  docSnapshot.data()!['notice'];

      BusTrips.busTrips.add(BusTrips(BusTrips.BusNames[FirebaseReadArray.ind],
          tc,BusStaticVariables.Downtrips, [], lc, ntc)) ;

     // BusStaticVariables.Notice = docSnapshot.data()!['notice'];

      //tc= lc;
     // print(BusStaticVariables.Notice);
      //print(BusStaticVariables.Uptrips);
      // print(BusStaticVariables.Downtrips);
      // print(lc);
      // print(tc);
      // print("done");
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