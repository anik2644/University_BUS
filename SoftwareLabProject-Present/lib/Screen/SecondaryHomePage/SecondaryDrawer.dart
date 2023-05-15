import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondaryHomapageDrawer extends StatefulWidget {

  @override
  State<SecondaryHomapageDrawer> createState() => _SecondaryHomapageDrawerState();
}

class _SecondaryHomapageDrawerState extends State<SecondaryHomapageDrawer> {



  @override
  Widget build(BuildContext context) {
    return   Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Container(child: Text(' ')),
                          Container(child: Text(' ')),
                          Container(),

                          Center(
                            child: OutlinedButton(
                              child:Container(child: Text('Any Text')),
                              onPressed: (){

                                setState(() {
                                  //      Navigator.push(context, MaterialPageRoute(builder: (context) =>  AuthService().handleAuthState()),//AccountPage()),);
                                });}, ),


                          )
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),


          ListTile(
            leading: Icon(Icons.bus_alert_sharp, color: Colors.white),
            title:
            Text("Bus  1", style: TextStyle(color: Colors.white)),
            onTap: () {
              //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.bus_alert_sharp, color: Colors.white),
            title:
            Text("Bus  1", style: TextStyle(color: Colors.white)),
            onTap: () {
              //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.bus_alert_sharp, color: Colors.white),
            title:
            Text("Bus  1", style: TextStyle(color: Colors.white)),
            onTap: () {
              //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.bus_alert_sharp, color: Colors.white),
            title:
            Text("Bus  1", style: TextStyle(color: Colors.white)),
            onTap: () {
              //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.bus_alert_sharp, color: Colors.white),
            title:
            Text("Bus  1", style: TextStyle(color: Colors.white)),
            onTap: () {
              //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.bus_alert_sharp, color: Colors.white),
            title:
            Text("Bus  1", style: TextStyle(color: Colors.white)),
            onTap: () {
              //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
            },
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.flag_rounded,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     "Terms & Condition",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onTap: () {
          //    // Navigator.push(context,MaterialPageRoute(builder: (context) =>hotel_description()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.logout,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     "Logout",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onTap: () {
          //
          //  //   Navigator.push(context,MaterialPageRoute(builder: (context) => AuthService().handleAuthState()),//AccountPage()),);
          //
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.contacts, color: Colors.white),
          //   title:
          //   Text("Contact Us", style: TextStyle(color: Colors.white)),
          //   onTap: () {
          //     //  Navigator.push(context,MaterialPageRoute(builder: (context) =>MessagesScreen(),));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.flag_rounded,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     "Terms & Condition",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onTap: () {
          //     // Navigator.push(context,MaterialPageRoute(builder: (context) =>hotel_description()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.logout,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     "Logout",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onTap: () {
          //
          //     //   Navigator.push(context,MaterialPageRoute(builder: (context) => AuthService().handleAuthState()),//AccountPage()),);
          //
          //   },
          // ),
        ],
      ),
    );

  }
}
