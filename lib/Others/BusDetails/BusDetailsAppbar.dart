import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../SecondaryHomePage/SecondaryBody.dart';

class BusDetailsAppbar extends StatefulWidget {
  const BusDetailsAppbar({Key? key}) : super(key: key);

  @override
  State<BusDetailsAppbar> createState() => _BusDetailsAppbarState();
}

class _BusDetailsAppbarState extends State<BusDetailsAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        Bus.busList[Bus.selectedBus].name,
        style: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.black,
    );
  }
}
