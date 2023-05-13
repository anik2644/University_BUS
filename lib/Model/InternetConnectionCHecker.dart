import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart' as per;
import 'package:flutter_offline/flutter_offline.dart';

class ConnectionChecker extends StatefulWidget {

  var obj;
  ConnectionChecker(this.obj);

  @override
  State<ConnectionChecker> createState() => _ConnectionCheckerState();
}

class _ConnectionCheckerState extends State<ConnectionChecker> {


  late per.PermissionStatus _status;
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;



  @override
  Widget build(BuildContext context) {
    return Builder(
          builder: (BuildContext context) {
            return OfflineBuilder(
              connectivityBuilder: (BuildContext context,
                  ConnectivityResult connectivity, Widget child) {
                final bool connected = connectivity != ConnectivityResult.none;
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    child,
                    Positioned(
                      left: 0.0,
                      right: 0.0,
                      height: 32.0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        color:
                        connected ? /* Color(0xFF00EE44) */ null : Color(
                            0xFFEE4400),
                        child: connected
                            ? null
                            : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "OFFLINE",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            SizedBox(
                              width: 12.0,
                              height: 12.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.0,
                                valueColor:
                                AlwaysStoppedAnimation<Color>(
                                    Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              child:widget.obj,
            );
          });
  }



  getConnectivity() {
    return subscription = Connectivity().onConnectivityChanged.listen(
          (ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox();
          setState(() => isAlertSet = true);
        }
      },
    );
  }

  showDialogBox() {
    return showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('No Connection'),
        content: const Text('Please check your internet connectivity'),
        actions: <Widget>[
          TextButton(
            onPressed: () async {
              Navigator.pop(context, 'Cancel');
              setState(() => isAlertSet = false);
              isDeviceConnected =
              await InternetConnectionChecker().hasConnection;
              if (!isDeviceConnected && isAlertSet == false) {
                showDialogBox();
                setState(() => isAlertSet = true);
              }
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }



}
