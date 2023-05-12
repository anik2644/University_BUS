import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:userapp/Maps/Location_view_templete.dart';
import '../SecondaryHomePage/SecondaryBody.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class BD extends StatefulWidget {

  static String busName= "kn";
  static String sch= "8.00";
  static String upDown= "up";


  @override
  State<BD> createState() => _BDState();
}

class _BDState extends State<BD> {


  var _noticeController = new TextEditingController();
  var _passCodeController = new TextEditingController();
    //_noticeController
  List<String> Uptrips=   <String> ['0.0','7.02','8.0','7.72','60.0','74.02'];
  List<String> Downtrips=   <String> ['0.0','85.02','7.02','8.0','7.72','60.0','74.02'];
  List<String> locShare=   <String> ['0.0','85.02','7.02','8.0','7.72','60.0'];

  String just= "just";

  String notic = "No notice so far";


  var selectedBusId;

Future<void> _getNotice() async {

    CollectionReference schedule = FirebaseFirestore.instance.collection('schedule');

    await schedule.where('name', isEqualTo: {
      'busName': Bus.busList[Bus.selectedBus].name,
      // currentUserId.toString(): null
    }).limit(1)
        .get()
        .then(
            (QuerySnapshot querySnapshot) async {
          if (querySnapshot.docs.isNotEmpty) {
            //  rreaddata();
            selectedBusId = querySnapshot.docs.single.id;
            print(selectedBusId);
            //print("dound man");
          } else {}
        });

        await FirebaseFirestore.instance.collection("schedule").doc(selectedBusId).snapshots().listen((userData) {

          notic = userData.data()!['notice'];
      // setState(() {
      //   myId = userData.data()['uid'];
      //   myUsername = userData.data()['name'];
      //   myUrlAvatar = userData.data()['avatarurl'];
      //
      // });
    });



    // var docSnapshot= await FirebaseFirestore.instance.collection("schedule").doc(selectedBusId).get();
    // if (docSnapshot.exists) {
    //   docSnapshot.data([notice]);
    //   docSnapshot.data()?.forEach((key, value) {
    //
    //     print(value);
    //   });




      // //print(Uptrips);
      // setState(() {
      //   //  llong= position.longitude.toDouble();
      //   //  llat =position.latitude.toDouble();
      //
      // });

    }

Future<void> load_data() async {
  // print(Hotel.hotelList[Hotel.selectedHotel].name);
  Uptrips.clear();
  Downtrips.clear();
  var chatDocId;
  CollectionReference Loc = FirebaseFirestore.instance.collection('schedule');

  await Loc.where('name', isEqualTo: {
    'busName': Bus.busList[Bus.selectedBus].name,
    // BusDetailsBody.sc: null,
  }).limit(1).get().then((QuerySnapshot querySnapshot) async {
    if (querySnapshot.docs.isNotEmpty) {
      chatDocId = querySnapshot.docs.single.id;
      // print(chatDocId);
      //  print("Got it");
    } else {
      // print("Vacant Collection");
      // await Loc.add({
      //   'trip': {
      //     BusDetailsBody.name: null,
      //     BusDetailsBody.sc: null,
      //
      //   },
      //   'currentLocation' : GeoPoint(value.latitude,value.longitude),
      // }).then((value) => {
      //   chatDocId = value});
      // //   print("Arrogant");
    }
  },
  ).catchError((error) {});

  // print(chatDocId);
  //  print("object1");

  var docSnapshot= await FirebaseFirestore.instance.collection("schedule").doc(chatDocId).get();
  if (docSnapshot.exists) {

    // print(docSnapshot.data());
    // GeoPoint position = docSnapshot.get('currentLocation');
    // print(position.longitude.toString());
    // print(docSnapshot.get('sch'));

    //Uptrips = docSnapshot.get('sch');
    List.from(docSnapshot.get('up')).forEach((element){
      String data = element;

     // print(element.toString());
      //then add the data to the List<Offset>, now we have a type Offset
      Uptrips.add(data);
    });

    List.from(docSnapshot.get('down')).forEach((element){
      String data = element;

      //then add the data to the List<Offset>, now we have a type Offset
      Downtrips.add(data);
    });




    //print(Uptrips);
    setState(() {
      //  llong= position.longitude.toDouble();
      //  llat =position.latitude.toDouble();

      just= Uptrips[1];
    });

  }


}

  Future<void> locShareFlag() async {
    locShare.clear();
    var chatDocId;
    CollectionReference Loc = FirebaseFirestore.instance.collection('schedule');

    await Loc.where('name', isEqualTo: {
      'busName': Bus.busList[Bus.selectedBus].name,
      // BusDetailsBody.sc: null,
    }).limit(1).get().then((QuerySnapshot querySnapshot) async {
      if (querySnapshot.docs.isNotEmpty) {
        chatDocId = querySnapshot.docs.single.id;
        // print(chatDocId);
        //  print("Got it");
      } else {
        // print("Vacant Collection");
        // await Loc.add({
        //   'trip': {
        //     BusDetailsBody.name: null,
        //     BusDetailsBody.sc: null,
        //
        //   },
        //   'currentLocation' : GeoPoint(value.latitude,value.longitude),
        // }).then((value) => {
        //   chatDocId = value});
        // //   print("Arrogant");
      }
    },
    ).catchError((error) {});

    // print(chatDocId);
    //  print("object1");

    var docSnapshot= await FirebaseFirestore.instance.collection("schedule").doc(chatDocId).get();
    if (docSnapshot.exists) {

      // print(docSnapshot.data());
      // GeoPoint position = docSnapshot.get('currentLocation');
      // print(position.longitude.toString());
      // print(docSnapshot.get('sch'));

      //Uptrips = docSnapshot.get('sch');
      List.from(docSnapshot.get('locShare')).forEach((element){
        String data = element;

        // print(element.toString());
        //then add the data to the List<Offset>, now we have a type Offset
        locShare.add(data);
      });



      //print(Uptrips);
      setState(() {
        //  llong= position.longitude.toDouble();
        //  llat =position.latitude.toDouble();

        //just= Uptrips[1];
      });

    }


  }


  Future openDialouge() => showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextField(
                      decoration:InputDecoration(hintText: "Type Any Notice",) ,
                      controller: _noticeController,
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: _passCodeController,
                      decoration:InputDecoration(hintText: "PassCode",) ,
                    ),
                    TextButton(onPressed: (){

                      int flag =0;
                      for(int i=0;i< _noticeController.text.length;i++)
                        {
                          if(_noticeController.text.codeUnitAt(i)>64&&_noticeController.text.codeUnitAt(i)<91||_noticeController.text.codeUnitAt(i)>96&&_noticeController.text.codeUnitAt(i)<123)
                         {
                           flag =1;
                         }
                          //print(_noticeController.text[i]);
                        }

                      if(flag==1)
                        {
                          //print("object");

                        //  print(_noticeController.text);
                          notic =_noticeController.text;
                        }


                      setState(() {

                      });
                      Navigator.pop(context);
                      print("already pressed");
                    }, child: Text("Submit")),
                  ],
                ),
              )
          )));




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getNotice();
    load_data();
    locShareFlag();
  }

  Widget ScheduleButton(int index,String time, String ud) {
    return Container(
     // color: Colors.cyanAccent,
      child: Row(
        children: [
          SizedBox(width: 6,),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: ud == "down" ?BorderSide(width: 5.0, color: Colors.black26):
              locShare[index]=="1" ? BorderSide(width: 5.0, color: Colors.blue):
              locShare[index]=="0" ? BorderSide(width: 5.0, color: Colors.green):BorderSide(width: 5.0, color: Colors.black26) ,
            ),
              onPressed: ud == "down" ? null:  locShare[index]=="0"? ()
            {
              // print(time);
              // print(ud);
              BD.busName= Bus.busList[Bus.selectedBus].name;
              BD.sch = time;
              BD.upDown =ud;
              //Navigator.push(context, MaterialPageRoute(builder: (context) => LocationView()));


              setState(() {

              });

            }: locShare[index]=="1"? (){

                openDialouge();

              }:null,
            child: Text(time,style: TextStyle(fontSize: 25, color:Colors.blue ),),
          ),
          SizedBox(width: 6,),
        ],
      ),
    );
  }

  Widget titleSection(){
    return Container(
      padding: EdgeInsets.only(right: 32, left: 32, top: 0, bottom: 0),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  //padding:  EdgeInsets.only(bottom: 8),
                  child: Text(
                    Bus.busList[Bus.selectedBus].name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 20,
                      color: Colors.green,
                    ),
                    Text(
                      Bus.busList[Bus.selectedBus].address,
                      style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          /*   FavoriteButton(
            isFavorite: false,
            // iconDisabledColor: Colors.white,
            valueChanged: (_isFavorite) {
              bodyFavorite.favList.add(Myapp.selectedHotel);
              print('Is Favorite : $_isFavorite');
            },
          ),

        */
          /*
        IconButton(

            icon: Icon(
              Icons.favorite,
              color: _selectedIndex != null && _selectedIndex == position
                  ? Colors.redAccent
                  : Colors.grey,
            ),
            onPressed: (){

              _onSelected(position);
            }
        )

         */
        ],
      ),
    );
  }

  GestureDetector description() {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        child: Card(
          child: Wrap(
            children: <Widget>[



              ListTile(
                title: Text( notic//Hotel.hotelList[Hotel.selectedHotel].description
                  /*'Hotel Description'*/
                  ,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1.3,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/4,
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              Bus.busList[Bus.selectedBus].x),
                          //"https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              Bus.busList[Bus.selectedBus].y
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              Bus.busList[Bus.selectedBus].z
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 600),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              titleSection(),
              const SizedBox(
                width: double.infinity,
                height: 5,
              ),
              Card(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                    IconButton(

                      icon: Icon(

                        color: Colors.blue,

                        Icons.call,

                      ),

                      onPressed: () async {
                        //     FlutterPhoneDirectCaller.callNumber(hotel_number);
                      },

                    ),

                    IconButton(

                      icon: Icon(

                        color: Colors.blue,

                        Icons.chat,

                      ),

                      onPressed: () {

                      },

                    ),

                    IconButton(

                      icon: Icon(

                        color: Colors.blue,

                        Icons.location_on,

                      ),

                      onPressed: () {
                        AlertDialog alert = AlertDialog(
                          title: Text('Location:'),
                          content: Text( Bus.busList[Bus.selectedBus].location),
                        );
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert;
                          },
                        );
                      },

                    ),

                  ],

                ),
              ),
              description(),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  ListTile(
                    title: Text( "Up Trips:"//Hotel.hotelList[Hotel.selectedHotel].description
                      /*'Hotel Description'*/
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  //  ListTile( Text("Up Trips:",style: TextStyle(fontSize: 20,),textAlign: TextAlign.left,)),
                  // SizedBox(height: 30,),

                  Container(
                    height: 100,
                    child: ListView.builder(
                      //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,

                        padding: EdgeInsets.only(left: 25,right: 25,top: 5) ,
                        itemCount: Uptrips.length,
                        itemBuilder: (context, index) => ScheduleButton(index,
                          Uptrips[index],"up",
                        )),
                  ),



                  // Container(
                  //   height: 100,
                  //   child: Expanded(
                  //     child: ListView.builder(
                  //       //shrinkWrap: true,
                  //         scrollDirection: Axis.horizontal,
                  //
                  //         padding: EdgeInsets.only(left: 25,right: 25,top: 5) ,
                  //         itemCount: Uptrips.length,
                  //         itemBuilder: (context, index) => ScheduleButton(index,
                  //           Uptrips[index],"up",
                  //         )),
                  //   ),
                  // ),
                  // SizedBox(height: 30,),
                  ListTile(
                    title: Text( "Down Trips:"//Hotel.hotelList[Hotel.selectedHotel].description
                      /*'Hotel Description'*/
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  // Card(child: Text("Down Trips:",style: TextStyle(fontSize: 20),)),
                  // SizedBox(height: 30,),

                  Container(
                    height: 100,
                    child: ListView.builder(
                      //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Downtrips.length,
                        padding: EdgeInsets.only(right: 25,left: 25,top: 10) ,
                        itemBuilder: (context, index) => ScheduleButton( index,
                            Downtrips[index],"down"
                        )),
                  ),
                  // Container(
                  //   height: 100,
                  //   child: Expanded(
                  //     child: ListView.builder(
                  //       //shrinkWrap: true,
                  //         scrollDirection: Axis.horizontal,
                  //         itemCount: Downtrips.length,
                  //         padding: EdgeInsets.only(right: 25,left: 25,top: 10) ,
                  //         itemBuilder: (context, index) => ScheduleButton( index,
                  //             Downtrips[index],"down"
                  //         )),
                  //   ),
                  // ),
                ],
              ),
            ],

          ),
        ),
      );


  }
}
