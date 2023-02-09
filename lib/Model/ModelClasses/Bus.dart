class Bus{

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
      "https://scontent.fdac151-1.fna.fbcdn.net/v/t31.18172-8/22339186_1945451705471419_9144170248335838218_o.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0debeb&_nc_ohc=ZjDU600CB4gAX-L8_p-&_nc_ht=scontent.fdac151-1.fna&oh=00_AfAx2bMkFllOE2taoqoE399tKq4AxFgmk0V8WahISoaggA&oe=63E9E0BE",
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
  String location ="Cox's Bazar";
  late String y ;
  late String z;
  bool isFav=false;
  String cellNo= "01521756345";
  late String address;
  //List <String> image;


  //
  Bus(String location,String address,String name,String description,String x,String y,String z)
  {

    this.location=location;
    this.address=address;
    this.name= name;
    this.description= description;
    this.x =x;
    this.y=y;
    this.z=z;

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