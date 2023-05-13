import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userapp/SecondaryHomePage/SecondaryBody.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BusDetailsBody extends StatefulWidget {
  const BusDetailsBody({Key? key}) : super(key: key);

  @override
  State<BusDetailsBody> createState() => _BusDetailsBodyState();
}

class _BusDetailsBodyState extends State<BusDetailsBody> {

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
                title: Text(  "This is Notice place"//Hotel.hotelList[Hotel.selectedHotel].description
                  /*'Hotel Description'*/
                  ,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Container(
                  margin : EdgeInsets.symmetric(horizontal: 15),
                 // child: Text(description_hotel_sea_crown)
                )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector allTrips() {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        child: Card(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  title: Row(
                    children: [
                      Text('Trips',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Up: ",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),

                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                    SizedBox(width: 10,),
                    Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    ],
              ),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Down: ",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        Row(children: [Icon(Icons.lock_clock, size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text('Trip No:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                        ),

                      ],
                    ),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
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
                            // "https://cf.bstatic.com/xdata/images/hotel/max1280x900/121123916.jpg?k=4c7205e458ef9d368d14ad4aacd8a45c394110e2b51f2de47a1ffb8d1765cfd6&o=&hp=1"
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
                            //"https://i.travelapi.com/hotels/10000000/9750000/9746600/9746513/b36e79aa_z.jpg"
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
              //ListView.builder(itemBuilder: itemBuilder),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      //buttonSection,
                      Card(
                        child:   Row(

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

                              // /  chatsData = List.from(chatsData.reversed);
                              //   chatsData.add(  Chat(
                              //     name: Myapp.hotelList[Myapp.selectedHotel].name,
                              //     lastMessage: "Hi,Please let know about us",
                              //     image: Myapp.hotelList[Myapp.selectedHotel].x,
                              //     time: "",
                              //     isActive: true,
                              //   ),);
                              //
                              //   demeChatMessages.add(ChatListObject(Myapp.hotelList[Myapp.selectedHotel].name),);
                              //   chatsData = List.from(chatsData.reversed);
                              //   AuthService.indx= 0;//chatsData.length-1;
                              //
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) =>
                              //           messagesScreenForAllChatMembers(),
                              //     ),
                              //
                              //   );
                              //


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
                     // Popular_facilities(),
                      allTrips(),
                      description(),
                      SizedBox(
                        height: 90,
                      )
                    ],
                  ),
                ),
              ),
            ],

        ),

    );
  }
}
