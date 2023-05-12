import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart' as loc;

const String google_api_key = "AIzaSyBW6mMR3OtLAKnmYsdflft1cshYnWmW-68";
const Color primaryColor = Color(0xFF7B61FF);
const double defaultPadding = 16.0;

const kPrimaryColor = Color(0xFF00BF6D);
const kSecondaryColor = Color(0xFFFE9901);
const kContentColorLightTheme = Color(0xFF1D1D35);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);
const kDefaultPadding = 20.0;
//anik

class AllStaticVariables{

  static late StreamSubscription<loc.LocationData> locationSubscription;
  static int mapshareflag=0;
  static String selectedtrip='0';
  static int gps_share_flag =0;
  static int online_offline_flag=0;
  static int anikf=0;


  static late String chatDocId;
  static String busName= "Taranga";
  static late int location_share_schedule_index ;
  static String sch= "8.00";
  static String upDown= "up";

  static DateTime start_time = new DateTime.now();
}