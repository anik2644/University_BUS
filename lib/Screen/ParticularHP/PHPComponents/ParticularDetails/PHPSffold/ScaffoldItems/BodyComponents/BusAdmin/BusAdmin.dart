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
        title: Text("Taranga Bus Admin"),
      ),
      body: Container(
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
                      backgroundImage: NetworkImage("https://news.russia.postsen.com/content/uploads/2023/01/13/42a882a444.jpg"),
                    ),

                    SizedBox(width: 100,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text("Mr. Jack"),
                        Text("President"),
                        Text("Taranga Bus"),
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

                        Text("Ms. Rose"),
                        Text("General Secretary"),
                        Text("Taranga Bus"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
