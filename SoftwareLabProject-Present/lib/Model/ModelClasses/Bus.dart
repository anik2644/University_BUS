import 'package:campousia/Model/ModelClasses/BusTrips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Bus {
  static List<Marker> Routes = [
    Marker(
        point: LatLng(23.763189353502426, 90.36586382952628),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.75884128259024, 90.36497000998382),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.75707619700285, 90.36200670180153),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.75104895026313, 90.36835663122193),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.745925540903972, 90.37179030867637),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.744127204319987, 90.37256585865306),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.739457428542774, 90.37530458996805),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.73316520899645, 90.39066283889422),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.732624505993996, 90.39458304866238),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.72761011772169, 90.39732164271581),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
    Marker(
        point: LatLng(23.72795411973503, 90.4002214431472),
        builder: (context) => Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 50,
        )),
  ];
  static List<int> favIndices = [2,3,4];
  static int selectedBus = 3;

  static int indexofbustrips=3;
  static List<Bus> busList = [
    Bus(
        "From: Curzon Hall, To: Mohammadpur",
        "From: Curzon Hall, To: Mohammadpur",
        "Taranga",
        "Experience a convenient and reliable journey on the Taranga bus from Curzon Hall to Mohammadpur. This popular route takes you through the bustling streets of Dhaka, showcasing its diverse neighborhoods. Enjoy the comfort of the bus as you traverse commercial districts, educational hubs, and lively marketplaces. Mohammadpur awaits with its vibrant atmosphere, enticing eateries, and bustling shopping centers. Travel hassle-free and reach your destination efficiently with the Taranga bus.",
        "https://drive.google.com/uc?export=view&id=1Fa-qJZHsJioxOk-N07cIItBnkX9l9uOb",
        "https://drive.google.com/uc?export=view&id=1bqnjmVryq8OMqZiJTc4iJ7rXNSKGDUO0",
        "https://drive.google.com/uc?export=view&id=1-EOGwDfEkofuyoQYL0HnrfV8mnt3eBk9",
        [
          "Azizul Haque",
          "Abdul Kasem"
        ],
        [
          Marker(
              point:
              LatLng(23.728162916288856, 90.39862658159959), //Curzon Hall
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.731971388946285, 90.39557853742294), //TSC
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.733523551174528, 90.39153577975226), //VC Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(
                  23.73948002025734, 90.3754159681061), //Zigatola Bus Stand
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point:
              LatLng(23.744731897025577, 90.37257108485463), //Dhanmondi 15
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.748382293545006, 90.37019846814835), //Star Kabab
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.751524084710592, 90.36805269645261), //Shankar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(
                  23.753888597431352, 90.36500570858836), //Graphics Art College
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.757279211751566,
                  90.36134282392989), //Mohammadpur bus stand
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.76068568384881, 90.36178442393), //Noorjahan Road
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point:
              LatLng(23.7610939860117, 90.36338146625933), //Salimullah Road
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.75984691753672, 90.36583836955765), //Town Hall
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.760445053927185, 90.37278947244845), //Asad Gate
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
    Bus(
        "From: Curzon Hall, To: Mograpara",
        "From: Curzon Hall, To: Mograpara",
        "Isha Kha",
        "Embark on a convenient and reliable journey aboard the Isha Kha bus, operating from Curzon Hall to Mograpara. This route offers a seamless transportation option for students, professionals, and commuters. As you board the bus, enjoy the comfort of the seats and prepare for a smooth ride through the bustling streets of Dhaka. The Isha Kha bus takes you through diverse neighborhoods, bustling markets, and lively commercial areas, showcasing the vibrant essence of the city. Arriving at Mograpara, you'll find a lively destination with its unique charm, local markets, and opportunities to explore the local culture. Travel hassle-free and reach Mograpara efficiently with the Isha Kha bus.",
        "https://observerbd.com/2017/07/25/1500992645.jpg",
        "https://drive.google.com/uc?export=view&id=1-EOGwDfEkofuyoQYL0HnrfV8mnt3eBk9",

      //  https://drive.google.com/file/d/1POlrla5DSz2SzTbcbUPzOzR1LrETyR7t/view?usp=sharing
        // https://drive.google.com/uc?export=view&id=1POlrla5DSz2SzTbcbUPzOzR1LrETyR7t
        "https://cdn.dhakapost.com/media/imgAll/BG/2022May/08-20220603204612.jpg",
        [
          "Abdul Hannan Afnan",
          "Mohammad Nasif Hossain"
        ],
        [
          Marker(
              point: LatLng(23.734998005982284, 90.39121392392907), //molchattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.733523551174528, 90.39153577975226), //VC Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.705817413742864, 90.52190426204886), //Kachpur
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.636368877179226, 90.59481820005773), //Mograpara
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.71006927085954, 90.45777118187776), //Matulail Medical
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.648380710987833, 90.67359016480334), //Voberchor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
    Bus(
        "From: Curzon Hall, To: Tongi/Gazipur",
        "From: Curzon Hall, To: Tongi/Gazipur",
        "Khonika",
        "Embark on a seamless and convenient journey aboard the Khonika bus, departing from Curzon Hall and heading towards Tongi/Gazipur. This well-established route provides a reliable transportation option for students, professionals, and commuters alike. Hop aboard the Khonika bus and experience a comfortable ride through the bustling streets of Dhaka. As the bus glides through the city, you'll pass by diverse neighborhoods, bustling markets, and vibrant commercial districts, offering a glimpse into the dynamic fabric of Dhaka's urban landscape. Upon reaching Tongi/Gazipur, you'll find yourself in a bustling area known for its industrial hubs, commercial centers, and vibrant local culture. Enjoy a hassle-free journey and reach your destination efficiently with the Khonika bus.",
        "https://new-media.dhakatribune.com/en/uploads/2022/12/30/du-7.jpeg",
        "https://www.newsbangla24.com/home/newogwithwatermark/217788/2023/01/01/DU-BUS.jpg",
        "https://samakal.com/uploads/2018/01/print/photos/Untitled-20-5a6cb04becb5d.jpg",
        [
          "Abdul Wasey Afif",
          "Taime Hasan"
        ],
        [
          Marker(
              point: LatLng(24.11919900320637, 90.39885609737104), //Shibbari
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point:
              LatLng(23.790726434161083, 90.36213415223115), //College gate
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point:
              LatLng(23.728162916288856, 90.39862658159959), //Curzon Hall
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point:
              LatLng(23.734998005982284, 90.39121392392907), //Mol Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
    Bus(
        "From: Curzon Hall, To: Mirpur-12",
        "From: Curzon Hall, To: Mirpur-12",
        "Choitali",
        "Embark on a convenient and reliable journey with the Choitali bus, commencing from the iconic Curzon Hall and heading towards Mirpur-12. This popular route caters to the transportation needs of students, professionals, and commuters. Step onto the Choitali bus and enjoy a comfortable ride through the vibrant streets of Dhaka. The bus traverses diverse neighborhoods, bustling markets, and lively commercial areas, showcasing the city's dynamic atmosphere. As you arrive at Mirpur-12, you'll encounter a bustling locality with its array of amenities, including shopping centers, restaurants, and recreational facilities. Experience a hassle-free trip and reach your destination efficiently with the Choitali bus.",
        "https://www.gonews24.com/media/imgAll/2019January2/SM/dusm-20190316064556.jpg",
        "https://images.hive.blog/p/3W72119s5BjVs3Hye1oHX44R9EcpQD5C9xXzj68nJaq3CeRgE4CEUSXHwPVDmcjpAxRs79wgtoZTYZyeyq3ViNid8jV6dgsNSjtQquD3xvWTKtEBq5ipU6?format=match&mode=fit&width=768",
        "https://www.justnewsbd.com/np-uploads/content/images/2017December/11-1-20220817165900.jpg",
        ["Nusrat Jahan Nipa", "Mahdi Mohammad Hossain Noki"],
        [
          Marker(
              point: LatLng(23.734998005982284, 90.39121392392907), //Mol Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.728162916288856, 90.39862658159959), //Curzon Hall
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point:
              LatLng(23.839595911240295, 90.37712719972343), //Harun Mollar Math
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.82894655979627, 90.36374842287594), //Mirpur-12
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.82149885733741, 90.3653513038898), //Mirpur-11.30
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.811929658380535, 90.3608052325547), //Mirpur 6
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.81651206753037, 90.36744641470762), //Bangla College
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.775893357265517, 90.36504969908815), //Shamoli
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.731971388946285, 90.39557853742294), //TSC
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
    Bus(
        "From: DU, To: Mirpur-14/Kochukhet",
        "From: DU, To: Mirpur-14/Kochukhet",
        "Boishakhi",
        "Embark on an efficient and comfortable journey with the Boishakhi bus, starting from Dhaka University and heading towards Mirpur-14/Kochukhet. Serving students, faculty, and commuters, this popular route offers a reliable transportation option. Hop aboard the Boishakhi bus and enjoy a smooth ride through the vibrant streets of Dhaka. The bus takes you through diverse neighborhoods, bustling marketplaces, and commercial areas, showcasing the city's lively ambiance. As you reach Mirpur-14/Kochukhet, you'll encounter a bustling locality known for its residential communities, commercial establishments, and recreational facilities. Travel hassle-free and reach your destination conveniently with the Boishakhi bus.",
        "https://drive.google.com/uc?export=view&id=1-EOGwDfEkofuyoQYL0HnrfV8mnt3eBk9",
        "https://observerbd.com/2018/07/11/1531324829.jpg",
        "https://www.shutterstock.com/image-photo/dhaka-bangladesh-09-06-2018-260nw-1175536120.jpg",
        [
          "Abdullah Arean",
          "Mehadi Hasan Shanto"
        ],
        [
          Marker(
              point: LatLng(23.728162916288856, 90.39862658159959), //Curzon Hall
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.792339103187924, 90.3886491630819),//Kochukhet
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.796194980072055, 90.38795265461424),//Mili Super Market
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.771682176202518, 90.37506519509508),//Shere Bangla Krisi University
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.80073850480067, 90.38364984424791),//Police College
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.804193830333706, 90.38055993966312),//Police staff College
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.752783163089582, 90.42459367874697),//Taltola
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.793800817198765, 90.37342923557759),//Saorapara
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.734196193124475, 90.39789684290727),//Dhaka University Poolpar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),

        ]),
    Bus(
        "From: Curzon Hall, To: Postogola",
        "From: Curzon Hall, To: Postogola",
        "Ullas",
        "Embark on a convenient and delightful journey with the Ullas bus, commencing from Curzon Hall and traveling towards Postogola. This well-known route caters to the transportation needs of students, professionals, and commuters alike. Step onto the Ullas bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus meanders through diverse neighborhoods, lively markets, and vibrant commercial areas, providing a glimpse into the city's energetic atmosphere. Upon reaching Postogola, you'll find a bustling destination with its array of shops, eateries, and local attractions. Experience a hassle-free trip and reach your destination efficiently with the Ullas bus.",
        "https://thedailycampus.sgp1.digitaloceanspaces.com/resources/img/article/202008/50728_136.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPpzJQ4vhhH7r-EwFAzafhZJQOJDw_nVWhcPoZI7dcu3tw1IovAtABAFgZrV3eKm1Eaf8&usqp=CAU",
        "https://thedailycampus.sgp1.digitaloceanspaces.com/resources/img/article/202208/98165_198.jpg",
        [
          "Saim Ahmed",
          "Sadmin Tahmid Khan"
        ],
        [
          Marker(
              point: LatLng(23.734092650230547, 90.39292563742296),//DU
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.719260067484605, 90.42144258165281),//Tikatuli Flyover
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.70304575753186, 90.43824092402436),//Dholaipar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.687199278118356, 90.4268818797506),//Postogola
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.619892385198888, 90.46221967217807),//Nobinnogor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.70613779077329, 90.43117347975122),//Mir Hazaribag
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.71165813667784, 90.42568024420312),//Doyagonj
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),

        ]),
    Bus(
        "From: Curzon Hall, To: Adamji IIT School",
        "From: Curzon Hall, To: Adamji IIT School",
        "Moitri",
        "Embark on a convenient and friendly journey with the Moitri bus, starting from Curzon Hall and heading towards Adamji IIT School. This dedicated route caters to the transportation needs of students and staff members. Step onto the Moitri bus and enjoy a comfortable ride through the vibrant streets of Dhaka. The bus travels through bustling neighborhoods, bustling markets, and lively commercial areas, giving you a glimpse into the city's energetic atmosphere. Upon arriving at Adamji IIT School, you'll find a prominent educational institution known for its academic excellence and serene campus. Experience a hassle-free trip and reach your destination efficiently with the Moitri bus.",
        "https://c8.alamy.com/comp/2G7C7GR/red-buses-of-dhaka-university-2G7C7GR.jpg",
        "https://live.staticflickr.com/3013/2648341003_3ce45051f2_b.jpg",
        "https://www.tbsnews.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/images/2020/03/09/brtc-bus.jpg",
        [
          "Tomal Hossain",
          "Nazira Jeshmin Lina"
        ],
        [
          Marker(
              point: LatLng(23.63736729675228, 90.51112715669083),//IIT school
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.641300252753126, 90.50834284823114),//Pathantoli
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.621718408088974, 90.50280191076024),//ChowdhoriPara
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.697883339413572, 90.50919132179968),//Chittagonj road
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.712731347027468, 90.49839450489175),//Ranimohol
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.715274103581077, 90.47505898775837),//Basherpool
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.712841437109432, 90.46986937672804),//Konapara
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.711593868546956, 90.42958793519223),//Jatrabari
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
    Bus(
        "From: DU, To: Narayonganj",
        "From: DU, To: Narayonganj",
        "Anondo",
        "Embark on a joyful and convenient journey with the Anondo bus, commencing from Dhaka University and heading towards Narayonganj. This well-established route serves as a reliable transportation option for students, professionals, and commuters. Step aboard the Anondo bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus traverses diverse neighborhoods, lively markets, and vibrant commercial areas, offering a glimpse into the city's dynamic atmosphere. As you reach Narayonganj, you'll discover a vibrant district known for its historical significance, bustling riverfront, and bustling markets. Experience a hassle-free trip and reach your destination efficiently with the Anondo bus.",
        "https://www.dhakatimes24.com/assets/news_photos/2022/03/16/image-254208.jpg",
        "https://samakal.com/uploads/2016/11/print/photos/untitled-9_249941.jpg",
        "https://media.istockphoto.com/id/1271450559/photo/young-woman-in-yellow-clothes-waiting-in-front-of-red-double-decker-bus-used-for-university.jpg?s=612x612&w=0&k=20&c=LHocrUxT3ZzwsyLYgCyeO7cyqyaqy6vxeL6N_2lIECU=",
        [
          "Fahmida Ara",
          "Rumel Hossain"
        ],
        [
          Marker(
              point: LatLng(23.734998005982284, 90.39121392392907), //Molchattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.731971388946285, 90.39557853742294), //TSC
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.728162916288856, 90.39862658159959), //Curzon Hall
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.748435235976107, 90.45004250400179),//Nondirpara
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.842546491862144, 90.40699885759068),//Kalirbazar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.66478722633783, 90.49962129452935),//Jalkuri
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),

        ]),
    Bus(
        "From: Curzon Hall, To: Mugdapara",
        "From: Curzon Hall, To: Mugdapara",
        "Srabon",
        "Embark on a convenient and scenic journey with the Srabon bus, starting from Curzon Hall and traveling towards Mugdapara. This popular route caters to the transportation needs of students, professionals, and commuters. Step onto the Srabon bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus takes you through diverse neighborhoods, vibrant markets, and bustling commercial areas, offering a glimpse into the city's dynamic atmosphere. As you reach Mugdapara, you'll discover a lively locality with its array of shops, eateries, and local attractions. Experience a hassle-free trip and reach your destination efficiently with the Srabon bus.",
        "https://archive.thedailystar.net/photo/2012/05/07/2012-05-07__f04.jpg",
        "https://www.gonews24.com/media/imgAll/2019January2/du-20190316064556.jpg",
        "https://cdn.kalerkantho.com/public/news_images/2019/03/16/143145613189_kalerkantho_pic.jpg",
        [
          "Alve Reduan",
          "Sidratul Muntaher"
        ],
        [
          Marker(
              point: LatLng(23.731971388946285, 90.39557853742294), //TSC
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.733523551174528, 90.39153577975226), //VC Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.730648528222098, 90.43067068653463),//Mugda Stadium
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.772813295947216, 90.41859123518736),//Boddho Mondir
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.727222827507436, 90.42884275276418),//Mugda Garments
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.724869217290983, 90.43503699946154),//Maniknagar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.742255706326116, 90.42961853580586),//Bashabo
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.744805074110605, 90.42639518164664),//Khilgaon Rail gate
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),

        ]),
    Bus(
        "From: Curzon Hall, To: Badda,Gulshan",
        "From: Curzon Hall, To: Badda,Gulshan",
        "Falguni",
        "Embark on a convenient and delightful journey with the Falguni bus, starting from Curzon Hall and heading towards Badda and Gulshan. This popular route caters to the transportation needs of students, professionals, and commuters. Step onto the Falguni bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus traverses diverse neighborhoods, vibrant markets, and bustling commercial areas, offering a glimpse into the city's dynamic atmosphere. As you reach Badda and Gulshan, you'll encounter thriving localities known for their upscale residential areas, shopping centers, and corporate hubs. Experience a hassle-free trip and reach your destination efficiently with the Falguni bus.",
        "https://thedailycampus.sgp1.digitaloceanspaces.com/resources/img/article/202208/98165_198.jpg",
        "https://live.staticflickr.com/4734/27721056129_c5bc1d1836_b.jpg",
        "https://c8.alamy.com/comp/2BJ3AJM/dhaka-bangladesh-january-14-2019-red-double-decker-bus-used-for-university-transportation-2BJ3AJM.jpg",
        [
          "Raisa Islam",
          "Sabbir Ahmed"
        ],
        [
          Marker(
              point: LatLng(23.734998005982284, 90.39121392392907), //Molchattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.791066059770284, 90.42585754057305),//NotunBazar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.785714515911664, 90.42585746659954),//Link Road
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.794506483665963, 90.42404642393129),//Bashtola
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.792457379493328, 90.4250924736506),//Shahjadpur
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.785879281859174, 90.42564406457585),//North Badda
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),

        ]),
    Bus(
        "From: Curzon Hall, To: Savar/Nobinnogor",
        "From: Curzon Hall, To: Savar/Nobinnogor",
        "Hemonto",
        "Embark on a scenic and convenient journey with the Hemonto bus, starting from Curzon Hall and traveling towards Savar/Nobinnogor. This popular route caters to the transportation needs of students, professionals, and commuters. Step onto the Hemonto bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus takes you through diverse neighborhoods, vibrant markets, and bustling commercial areas, offering a glimpse into the city's dynamic atmosphere. As you reach Savar/Nobinnogor, you'll discover a vibrant area known for its industrial zones, educational institutions, and natural beauty. Experience a hassle-free trip and reach your destination efficiently with the Hemonto bus.",
        "https://live.staticflickr.com/3013/2648341003_3ce45051f2_b.jpg",
        "https://cdn.dhakapost.com/media/imgAll/BG/2022May/08-20220603204612.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPpzJQ4vhhH7r-EwFAzafhZJQOJDw_nVWhcPoZI7dcu3tw1IovAtABAFgZrV3eKm1Eaf8&usqp=CAU",
        [
          "Nur Jannat Meherin",
          "Shamik Shafkat"
        ],
        [
          Marker(
              point: LatLng(23.733978416498267, 90.39288985355286),//DU Campus
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.78336095161732, 90.34398783772996),//Gabtoli
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(24.618948298458907, 90.26657172982476),//Fulbaria
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.620403544900906, 90.46133990767821),//NobinNagar
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),

        ]),
    Bus(
        "From: Curzon Hall, To: Rampura",
        "From: Curzon Hall, To: Rampura",
        "Bosonto",
        "Embark on a refreshing and convenient journey with the Bosonto bus, starting from Curzon Hall and heading towards Rampura. This popular route caters to the transportation needs of students, professionals, and commuters. Step onto the Bosonto bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus traverses diverse neighborhoods, lively markets, and vibrant commercial areas, offering a glimpse into the city's dynamic atmosphere. As you reach Rampura, you'll discover a bustling locality with its array of shops, eateries, and local attractions. Experience a hassle-free trip and reach your destination efficiently with the Bosonto bus.",
        "https://www.gonews24.com/media/imgAll/2019January2/du-20190316064556.jpg",
        "https://drive.google.com/uc?export=view&id=1zgLZ9JewnBS4DQzQ0NLJF7SDuN9pvdLf",
        "https://i.ytimg.com/vi/Ua1DY2Qx02k/maxresdefault.jpg",
        [
          "Nur Towha",
          "Noushin Ahmed"
        ],
        [
          Marker(
              point: LatLng(23.733523551174528, 90.39153577975226), //VC Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.734028279426205, 90.39480641256321),//DU Central Library
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.731179670964174, 90.40179081255859),//Anex Building
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.728249038040488, 90.40036568159957),//Doyel Chattor
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
    Bus(
        "From: Curzon Hall, To: Komolapur",
        "From: Curzon Hall, To: Komolapur",
        "Kinchit",
        "Embark on an efficient and convenient journey with the Kinchit bus, starting from Curzon Hall and heading towards Komolapur. This well-established route caters to the transportation needs of students, professionals, and commuters. Step onto the Kinchit bus and enjoy a comfortable ride through the bustling streets of Dhaka. The bus travels through diverse neighborhoods, lively markets, and vibrant commercial areas, offering a glimpse into the city's dynamic atmosphere. As you reach Komolapur, you'll find a bustling transportation hub known for its railway station and easy access to various parts of the city. Experience a hassle-free trip and reach your destination efficiently with the Kinchit bus.",
        "https://drive.google.com/uc?export=view&id=1cX9KGU4Jva6uc3jw3BCljRRy6qr8QZVO",
        "https://drive.google.com/uc?export=view&id=1AQh6KNXgRT1XBFtNbI-PfCn_QulMljZT",
        "https://drive.google.com/uc?export=view&id=1aoE7XX7si_ygy7-jx62_fzA1rgAIacL5",
        [
          "Sajaal Hasan",
          "Amina Maliha"
        ],
        [
          Marker(
              point: LatLng(23.73195696438051, 90.41875452846568),//Arambagh
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.73311419728198, 90.42670723316259),//Kamalapur
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.736256357114886, 90.42275901712519),//Ideal School & college Gate
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.74076453331577, 90.41552103865908),//Rajarbagh
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.747892414320244, 90.4121271497061),//Malibagh
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
          Marker(
              point: LatLng(23.758193848512555, 90.41246700052952),//Mouchak & Wireless
              builder: (context) => Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 50,
              )),
        ]),
  ];

  late String name;
  late String description;
  late String x;
  String location = "Cox's Bazar";
  late String y;
  late String z;
  bool isFav = false;
  String cellNo = "01521756345";
  late String address;
  late List<String> Admin = ["President", "Secretary"];
  late List<Marker> Stopages = [];


  static void indexfind()
  {
    for(int i =0;i<Bus.busList.length;i++)
      {
        // print(Bus.busList[Bus.selectedBus].name);
        // print(BusTrips.busTrips[i].name);
        if(Bus.busList[Bus.selectedBus].name == BusTrips.busTrips[i].name)
        {

          // print(Bus.busList[Bus.selectedBus].name);
          // print(BusTrips.busTrips[i].name);
          Bus.indexofbustrips=i;
          break;
        }
      }
  }


  Bus(String location, String address, String name, String description,
      String x, String y, String z, List<String> Admin, List<Marker> Stopages) {
    this.location = location;
    this.address = address;
    this.name = name;
    this.description = description;
    this.x = x;
    this.y = y;
    this.z = z;
    this.Admin = Admin;
    this.Stopages = Stopages;
  }
}