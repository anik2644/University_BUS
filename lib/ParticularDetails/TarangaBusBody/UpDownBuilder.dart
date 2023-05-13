import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:userapp/StaticPart/BusStaticVariables.dart';
import 'UPtripsDowntrips/ScheduleButton.dart';


class UpDownBuilder extends StatefulWidget {

  @override
  State<UpDownBuilder> createState() => _UpDownBuilderState();
}

class _UpDownBuilderState extends State<UpDownBuilder> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        TripsTitle("Up Trips:"),
        TripsTimes("up"),
        TripsTitle("Down Trips:"),
        TripsTimes("down"),
      ],
    );
  }



  Widget TripsTimes(String ud)
  {
    return Container(
      height: 100,
      child: ListView.builder(
        //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ud=="down"? BusStaticVariables.Downtrips.length: BusStaticVariables.Uptrips.length,
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
          itemBuilder: (context, index) =>
              ScheduleButton(index,ud=="down"? BusStaticVariables.Downtrips[index]: BusStaticVariables.Uptrips[index], ud)),
    );
  }

  Widget TripsTitle(String title)
  {
    return  ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );

  }


}
