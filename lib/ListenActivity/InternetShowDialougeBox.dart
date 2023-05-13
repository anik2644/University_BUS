import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:permission_handler/permission_handler.dart' as per;

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetShowDialougeBox{


  static late per.PermissionStatus _status;
  static late StreamSubscription subscription;
  static bool isDeviceConnected = false;
  static bool isAlertSet = false;

 static StreamSubscription<ConnectivityResult> getConnectivity(BuildContext context) {
    return subscription = Connectivity().onConnectivityChanged.listen(
          (ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox(context);
        }
      },
    );
  }

 static showDialogBox(BuildContext context) {
    return showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('No Connection'),
        content: const Text('Please check your internet connectivity'),
        actions: <Widget>[
          TextButton(
            onPressed: () async {
              Navigator.pop(context, 'Cancel');
              isAlertSet = false;
              isDeviceConnected = await InternetConnectionChecker().hasConnection;
              if (!isDeviceConnected && isAlertSet == false) {
                showDialogBox(context);

                isAlertSet = true;
              }
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

}