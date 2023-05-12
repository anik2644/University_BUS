import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AdvertisePortion extends StatefulWidget {
  const AdvertisePortion({Key? key}) : super(key: key);

  @override
  State<AdvertisePortion> createState() => _AdvertisePortionState();
}

class _AdvertisePortionState extends State<AdvertisePortion> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height / 1.5,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
          child: Text("preserved Place",
              style: TextStyle(
                fontSize: 25,
              ))),
    );
  }
}
