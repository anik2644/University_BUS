import 'dart:async';
import 'BusStaticVariables.dart';
import 'FirabaseStaticVariables.dart';
import 'Firebase/FirebaseFetchId.dart';
import 'Firebase/FirebaseReadArray.dart';
import 'package:location/location.dart';

class ModelStatic{

  static String particularAppbarText = "Taranga";
  static int gps_share_flag = 0;
  static int passwordNotMatched = 0;
  static int location_share_schedule_index=3;
  static late int selected_bus_index;

  static late StreamSubscription<LocationData> locationSubscription;
  static DateTime start_time = new DateTime.now();

  static int locSharePopupFlag = 1;



   static Future<void> particularBusDataLoad() async {

    FirebaseStaticVAriables.isLoading = false;
    // FirebaseStaticVAriables.selected_schedule_id = await FirebaseFetchId.getScheduleDocID(BusStaticVariables.busName) as String;
    //await FirebaseReadArray.loadNoticeAndTripswithFlag();
    await FirebaseReadArray.LoadAllBusData();
    FirebaseStaticVAriables.isLoading = true;
  }



  static int Difference(String baseTime, String ud)
  {
    int bh=0;
    int bm=0;
    var arr = baseTime.split('.');

    bh = int.parse(arr[0]);
    if(ud=="down")
    {
      if(bh<9)
      {
        bh= bh+12;
      }
    }
    bm =int .parse(arr[1]);



    DateTime dt= DateTime.now();
    int m=dt.minute;
    int h=dt.hour;

    m=(h-bh)*60+m-bm;

    return m;
  }


  static int TimeFlag(String baseTime,String ud,double possible_reachtime)
  {

    int m=0;
    m = Difference(baseTime,ud);
    if(m<0)
    {
      return 2;
    }
    else if(m>possible_reachtime*60)
    {
      return 2;
    }

    return 1;
  }

  static  locTimeFlag()
  {
    int n= BusStaticVariables.Uptrips.length;
    for(int i=0;i<n;i++)
      {
        int f= TimeFlag(BusStaticVariables.Uptrips[i] , "up", 3);

        BusStaticVariables.locShare.add(f.toString());
       // BusStaticVariables.locShare[i]= f.toString();
      }

  }

}