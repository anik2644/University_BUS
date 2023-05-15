import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusAdmin extends StatefulWidget {
  const BusAdmin({Key? key}) : super(key: key);

  @override
  State<BusAdmin> createState() => _BusAdminState();
}

class _BusAdminState extends State<BusAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bus Admin"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(height: 100,),
                Container(
                  width: 400,
                  height: 200,
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhF9yVwQfF2ZhnZZ_GxAQYBFcVgCBuezvxgA&usqp=CAU"),
                        ),

                        SizedBox(width: 100,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text(" Mr. Jack \n President \n Taranga Bus", style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                 SizedBox(
                   height: 50,
                 ),


                Container(
                  width: 400,
                  height: 200,
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnKjAHGgdSN4D5PNxbE_jaAJ4nGwEzViNSNQ&usqp=CAU"),
                        ),
                        SizedBox(width: 100,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text(" Mrs.Rose \n GS \n Taranga Bus", style: TextStyle(fontSize: 20,),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
