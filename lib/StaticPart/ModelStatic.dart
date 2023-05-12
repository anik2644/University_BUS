import 'dart:async';
import '../SecondaryHomePage/SecondaryBody.dart';
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
    FirebaseStaticVAriables.selected_schedule_id = await FirebaseFetchId.getScheduleDocID(BusStaticVariables.busName) as String;
    await FirebaseReadArray.loadNoticeAndTripswithFlag();
    FirebaseStaticVAriables.isLoading = true;
  }
}