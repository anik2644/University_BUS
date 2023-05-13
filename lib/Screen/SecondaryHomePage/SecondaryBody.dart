
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ParticularHP/ParticulurHomePage.dart';


class SecondaryBody extends StatefulWidget {
  const SecondaryBody({Key? key}) : super(key: key);

  @override
  State<SecondaryBody> createState() => _SecondaryBodyState();
}

class _SecondaryBodyState extends State<SecondaryBody> {
  GestureDetector BusButton(
      String imageVal, String hotelname, String hotellocation, int index) {
    return GestureDetector(
      onTap: () {
        //  History_model.His.add(index);
        Bus.selectedBus = index;
        print(Bus.selectedBus);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ParticulurHomePage()));
      },
      child: Row(
        children: [
          SizedBox(width: 22,),
          Container(
            width: 250,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                        image: NetworkImage(imageVal),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(hotelname),
                    subtitle: Text(hotellocation),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 22,),
        ],
      ),
    );

    /*
      Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .width / 2,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11.0),
                image: DecorationImage(
                  image: NetworkImage(
                      imageVal
                  ),
                  fit: BoxFit.cover,),
              ),
            ),

            ListTile(
              title: Text(hotelname),
              subtitle: Text(hotellocation),
            ),
          ],
        ),
      ),

    ),);

           */
  }

  List<Bus> display_list = List.from(Bus.busList);
  void updateList(String value) {
    setState(() {
      display_list = Bus.busList
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          pinned: true,
          centerTitle: true,
          title: const Text('App Bar Text'),
          actions: [
            /*
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bodyFavorite()));
              },
            ),
            */
          ],
          bottom: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Center(
                child: TextField(
                  onChanged: (value) => updateList(value),
                  decoration: InputDecoration(
                    hintText: 'Search for something',
                    prefixIcon: Icon(Icons.search),
// suffixIcon: Icon(Icons.favorite)
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              TextToDisplay("Favourites:"),
              TripsTimes("up"),
              TextToDisplay("All Buses"),
              TripsTimes("up"),
              /*
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 1000,//Hotel.hotelList.length* (MediaQuery.of(context).size.width / 2),
                child:  ListView.builder(
                  //shrinkWrap: true,
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => MyArticles(
                      display_list[index].x,
                      display_list[index].name,
                      display_list[index].address,index
                  ),
                ),

              ),
               */
            ],
          ),
        ),
      ],
    );
  }

  Widget TripsTimes(String ud) {
    return Container(
        height: 300,
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
          itemCount: display_list.length,
          itemBuilder: (context, index) => BusButton(display_list[index].x,
              display_list[index].name, display_list[index].address, index),
        ));
  }

  Widget TextToDisplay(String title) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}

class Bus {
  static int selectedBus = 3;
  static List<Bus> busList = [
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __1",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __2",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __3",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: Mohammadpur, To: Curzon",
      "Taranga",
      "This is Description place",
      "https://drive.google.com/uc?export=view&id=1-EOGwDfEkofuyoQYL0HnrfV8mnt3eBk9",
      // "https://mahfuzmanik.com/wp-content/uploads/2018/01/dhaka-university-lal-bus.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://www.gonews24.com/media/imgAll/2019January2/du-20190316064556.jpg",
      "https://observerbd.com/2018/07/11/1531324829.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __5",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __6",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __7",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __8",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __9",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __10",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __11",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __12",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: Mohammadpur, To: Curzon",
      "Trip No: __13",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Bus(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __14",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    /*Hotel(
      "From: __, To: __",
      "From: __, To: __",
      "Trip No: __14",
      "This is Description place",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    */

    /*
    Hotel(
      "Coxs Bazaar, Bangladesh",
      "Coxs Bazaar, Bangladesh",
      "Hotel Sea Crown",
      "Coxs Bazaar, Bangladesh",
      "https://as2.ftcdn.net/v2/jpg/01/37/82/77/1000_F_137827733_3Kddlca4RsZCrueAqsTemkO2Z2DCIH1C.jpg",
      //  "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
      "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
    ),
    Hotel(
      "Srinagar,India",
      "Srinagar,India",
      "Hotel Grand Mahal",
      "Srinagar,India",
      "https://media.istockphoto.com/photos/luxury-resort-picture-id104731717?k=20&m=104731717&s=612x612&w=0&h=40INtJRzhmU1O4Rj24zdY8vj4aGsWpPaEfojaVQ8xBo=",
      "https://media.istockphoto.com/photos/luxury-resort-picture-id104731717?k=20&m=104731717&s=612x612&w=0&h=40INtJRzhmU1O4Rj24zdY8vj4aGsWpPaEfojaVQ8xBo=",
      "https://media.istockphoto.com/photos/luxury-resort-picture-id104731717?k=20&m=104731717&s=612x612&w=0&h=40INtJRzhmU1O4Rj24zdY8vj4aGsWpPaEfojaVQ8xBo=",
    ),
    Hotel(
      "Singapore",
      "Singapore",
      "Skylight Homez",
      "Singapore",
      "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/07/1hotelsouthbeach.png",
      "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/07/1hotelsouthbeach.png",
      "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/07/1hotelsouthbeach.png",
    ),
    Hotel(
      "Dubai",
      "Dubai",
      "The Royal Mount",
      "Dubai",
      "https://img1.10bestmedia.com/Images/Photos/379999/Main-Pool-1_54_990x660.jpg",
      "https://img1.10bestmedia.com/Images/Photos/379999/Main-Pool-1_54_990x660.jpg",
      "https://img1.10bestmedia.com/Images/Photos/379999/Main-Pool-1_54_990x660.jpg",
    ),
    Hotel(
      "Bangladesh",
      "Bangladesh",
      "Hotel Niharika",
      "Bangladesh",
      "https://imageio.forbes.com/specials-images/imageserve/5ec567daf2098c0006c6036e/Kimpton-Shanghai-Hotel/960x0.jpg?format=jpg&width=960",
      "https://imageio.forbes.com/specials-images/imageserve/5ec567daf2098c0006c6036e/Kimpton-Shanghai-Hotel/960x0.jpg?format=jpg&width=960",
      "https://imageio.forbes.com/specials-images/imageserve/5ec567daf2098c0006c6036e/Kimpton-Shanghai-Hotel/960x0.jpg?format=jpg&width=960",
    ),
*/
  ];
  late String name;
  late String description;

  /*
  bool airport;
  bool bar;
  bool benchpoint;
  bool parking;
  bool restaurant;
  bool wifi;
*/
  late String x;
  String location = "Cox's Bazar";
  late String y;
  late String z;
  bool isFav = false;
  String cellNo = "01521756345";
  late String address;
  //List <String> image;

  //
  Bus(String location, String address, String name, String description,
      String x, String y, String z) {
    this.location = location;
    this.address = address;
    this.name = name;
    this.description = description;
    this.x = x;
    this.y = y;
    this.z = z;

    //  print("done");
    //  var image;
    /*
    image.add(x);
    image.add(y);
    image.add(z);
    */
  }

// get image => null;
}
