import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BusListBody/BusListBody.dart';


class BusListPage extends StatefulWidget {
  const BusListPage({Key? key}) : super(key: key);

  @override
  State<BusListPage> createState() => _BusListPageState();
}

class _BusListPageState extends State<BusListPage> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        TextToDisplay("Favourites:"),
        TripsTimes("up"),
        TextToDisplay("All Buses"),
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
          itemCount: 10,//ud=="down"? BusStaticVariables.Downtrips.length: BusStaticVariables.Uptrips.length,
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
          itemBuilder: (context, index) =>
              BusListBody(),
    ));
  }

  Widget TextToDisplay(String title)
  {
    return  ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );

  }

}
