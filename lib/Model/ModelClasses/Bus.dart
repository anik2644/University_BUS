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
        // "data:image/jpeg;base64,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",
      "https://live.staticflickr.com/4468/36997464613_7003951180_b.jpg",
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

  static List<int> favIndices = [2,3,4];
  late String name;
  late String description;


  late String x;
  String location ="Cox's Bazar";
  late String y ;
  late String z;
  bool isFav=false;
  String cellNo= "01521756345";
  late String address;
  //late List<String> Admin= []
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


  }


}