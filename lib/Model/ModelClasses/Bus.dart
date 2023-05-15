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
        "Trip No: Taranga",
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
        "Trip No: Isha Kha",
        "Embark on a convenient and reliable journey aboard the Isha Kha bus, operating from Curzon Hall to Mograpara. This route offers a seamless transportation option for students, professionals, and commuters. As you board the bus, enjoy the comfort of the seats and prepare for a smooth ride through the bustling streets of Dhaka. The Isha Kha bus takes you through diverse neighborhoods, bustling markets, and lively commercial areas, showcasing the vibrant essence of the city. Arriving at Mograpara, you'll find a lively destination with its unique charm, local markets, and opportunities to explore the local culture. Travel hassle-free and reach Mograpara efficiently with the Isha Kha bus.",
        "https://observerbd.com/2017/07/25/1500992645.jpg",
        "data:image/jpeg;base64,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",
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
        "Trip No: Khonika",
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
        "Trip No: Boishakhi",
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
        "Trip No: Ullas",
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
        "Trip No: Moitri",
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
        "Trip No: Anondo",
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
        "Trip No: Srabon",
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
        "Trip No: Falguni",
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
        "Trip No: Hemonto",
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
        "Trip No: Bosonto",
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
        "Trip No: Kinchit",
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
        if(Bus.busList[Bus.selectedBus].name == BusTrips.busTrips[i].name)
        {
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