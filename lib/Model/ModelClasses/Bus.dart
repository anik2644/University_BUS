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
        "https://drive.google.com/uc?export=view&id=HksCdHU3f0u_lQ5Lim7AKYezqLrgx82c",
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
        "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxQUExYTFBQXFxYYGSAZGRkZGh8hHBkhGSAaICAfHCAdICoiGSEnHR8aJDUkKCsuMTExGSE2OzYwOiowMS4BCwsLDw4PHRERHTAnIScxMDAwMjI1MDAyMDAwODAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDgwMP/AABEIAMIBAwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYHAf/EAE0QAAIBAgQDBQMIBAoJBAMAAAECEQADBBIhMQVBUQYTImFxMoGRBxRCUqGxwdEjkuHwFTNTYnKTorLS8RYkQ1SCo7PC00Rjc4M0ReL/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAMBEAAgIBAwMBBgYDAQEAAAAAAQIAEQMSITEEE0FRBRQiYXGRMkJSgaHBFSOx8NH/2gAMAwEAAhEDEQA/ACltcXaLG08Zp9pgQZiZBJHvgmoONWcTiFRbgtzbDZXzmWzb5tDtrt1rx8XiR/6W8PVrY++5Va7jr4DE2PZEkd9bJA6wrE1YxoBVzhDZPSDcf2exMgMqMMpjKxkQJGaQOcAeXSobnALxbMzJ8TPv0ir2M41cdiCLVqB9O+qD3TqfcKHNijzxOF9+K/JantpKvIeBCfCcA1pnM2WDjLrbnKNJyk6AnUHT6R91j/R3v2Zjfy6EnwghRJJAAIgflQVceBvicL7rjv8AYqVfw3EroUm1dsXEZSSVDyMuhDBipU6jlzqtKVUn/cNzxG/6LAH+PzAbeEf4unKr3DOHGxcW4l9lysGhYgwQYPlpHpQy1xRSsnG4dTzVcPfcjy03rz+FE/3p2/oYO7/3U9KDxAJn9RDt15zZrjMzAKW0DAAyQCBoCTqPTpUbcBsW7Slmcs+oEiFHOABAJESYnlQNscCQM+NYTuuFtgD9dpqfFXbgUTexFxQxEW1UuQNAVVgI5bnTXpR8HpEUyjluZcHZ7CwAS0Ak76+IAGTHl8SetWMFwXCoCqhoO/ibXfXQ76nXzoWl22f9nxM+osr/AN9X3wCjLFvFNIn/APJRQIAOsEx09aPg/TDtZf1S9Y4LhZA7rQnmzR/eozc+b2Gy27QUECY1B3IkE8pPxrFC2SxBw2JtrBi587LQRtKaSOus06/hyG0w73xHPEvbC899Sx1+zzo+HwsO1kG2qaJcDhAxcYdZPVZ+wmKsI1gTFlNTJJA1MgyepkD4Vl/ms/8A65P+LGXD/wBlO/g9+WAwg/pPdf8AKnY9JXYY/mmv4bjMOrElLS6fVXqKifjlr6S2j71rMWuHuI73C4VFkQ1pHVhrEHMSGBn7qkt4C9mJt4bCOsnW7bd2MEjTKQANNqL+UXZ306pol7S4ddu6H/GtJu2Nn+VtD/7BQheHYwnw4bBD0wjk/a1K7wziG3eWbXkmEtL/AHwTQG+Ufu4/UYdwPbGxDzftgxpBB116e6qrdt7YP8daMctfwNChh76sov3UunWGCIjDTY92AGGkidRr7m4SziDC2sYF0B7tUsnKIG+YFp11J5mjVAYgTps7Qtc7c22+lb9wakO2inZz7rbn7hVMYPGc8a/6lgfclV8Yl1IF7iT28203bSTG8QAfhT1H5SuwvqYbwvbdQGEuW692+nSQRU1jt05E92zDqLV3X4CsvhGBLRiTiRlYZi4cqdPDm94MefnXr8Sw6My/wrdQgkFe/ZQpGhEBYERGlSY0SiRZ2mrHbh/93ve63c/FKkHba5H/AOLfP/1P+QrPcPwgxCl7fEMRcUTJXEXY0Kg8hzZfjVodmFPtYi8w6Nfun76RmoWvJhXD9tHd+7+b3M/RlC9frMDt91X7nFmb2sGCf5xT9tZ3hHCxhsQiqxKtJEktHKJOsTWtQUVECQTvBOIZWnNw6wRznJJ/s1je1PDF/QvhrBtC4YNsMYMkcxou8V0hlFZ7+DjeNn9JlyXCMswzTPs6GI6+dS422j1G6k7dmL2mW2gEDa6QNhMDIY18zSq5iOPpaY22cErof0oH2cqVK5pt6TCcN7J4K9bS4bRh0DrKSYYSJl9NKtYjsrhrdt3t24ZUYg5FHI8wxNFOF2ctu2sRltW1j0QVPxMf6vdP80D4mK1HEyZqNTA8axtjDkPcw4ul2YAyPDkW31U9aLcCwNjF4fve4yBjlABWd3Ezk6oeXOsp8oh0w/mbp+DKPwFbj5P7McPsTz1/tXj/AN1T+apQ2QGOwnZvD2xC2yd28TgxprH6PyoXiLoe9fthABadrUz7WiHXpvFbLJGb+i3901iuGrN7Ek7tjLv/AFAg+xRTqjMybH2lTgvaR7mN+am1bCB7ikjNMWg5+tH0R8a23zFei/Bv8dc17DrPFbh875+JYfjXVsmtCby32Mw/yicYuYPuO6Fv9ILhbMpPsFAI8XmaJcCDOULRJUltBE5lnT1NAPls1bDDpbun4slajgEC4P6J/wCpbo8mJvy/WFUwgjl+qv5VmvlJxt3DWbLWHys7wSFQ6Rc01XqorW29hWX+UjDLcGFDtlTMZ1idHgTyJ2nzoegtxoCWqYnhXajF3L9u299irOAy5UEjmDCii3bniN2wlo2rj2yzuDlJEgJaiY9T8ar4LA2UxbpbKsFRWBzZyhAaRm8+lP8AlIT9HZH/ALlz+5YqB+G42FZAPrJvkz4tfvYhxdv3HAtggM7ET3lsdehI99dKa1qdW3P0j19a5Z8kygYm5/8AED/zbNdZJHi9fxqkqosliUOMpFvc+yh1JOveEc/ICq/Z+yIvtz+3+MWrHHLgyAdVQfB2P3Uzs6wyXh9Lp63NPuPwpmQv4/2l1Sx3J+Jrl3ywoBi0/wDhH/Uu11lRodDXMPlfsF8VbyqzRZ1hSYl7hEx+8RSbiaJzKnyZARd0AOdP7t6j3Ye2RxDFSDBsoQY0MC1/ioL8nNll77MpEtbIkETC3536Fl+IrQ9kM64+/mVsj21yNBgkW7YYTsDKbeVA/CJJ/GfoJtggiuafLWMr4Uxut0fA266T3gjUge+udfLGy3fmyoQzJ3hYKQYDZImNpg/Cm1VGt3K3ycr/AKsTG925HpksftrH9pEjFYgf+65+LE/jWu+Tm74GskHMHa55QVRY9ZWg3aPgOIfE3XW0SrMDMjmBO56zSbgQQfG37Ta/IwZwt3yuOPj82at0F0rCfJXbbD2btu8BbLXCwzOkEMgHJvrKN+tbdMZb/lbf64pqRW8HU3tKOOMX8OfNx9qH8aPA1m+I4hWu2spByMxJG2otga8z4TWgXEp9ZfiKLk6TZj5oFfxhshrqpnZWYCTCrm0JaNW32FFbmLt/XX4is92hwQxNlkVj7WaFM5t9NOu1Zudpek2IMxnboo7KmEtlQdCbcEzrJGu++53pVUudnWBIu4nu3G6Zj4RyG/1YpVhrMuFV4yNyrZjqRBgeQ0NQY7irOhthCFJEnU7EEbgcxUQr2KvuNPZPsvEfJmc49wP5wUnOO7zZSIHtnMZkHnR7guLexZt2BaLC2sAlwCfWBUsU4Cl3DKX2biAo3J341cI0sAerT+IoNgcEbYb2yzObhJyzmZs0+1HtUSp2WjuvGfZmCq3+8CcK4Kti+cRaUhzmnNqvj1IjPtOu/Kj38K3/AKtv7fzNNKUitLuMOJQ9nYDyL/eDOMcMXEuty/bV2UQvjcACZjKPCdetFuH8LvsA9pBppOYeRiGGuoBpuWtF2VdshUH6XP0qsbMxq5l1HR4caagvHqTKFvg2PP1R/V/lUeN7L4m4Mt02mG8MqEaEHppqB8K14xRjNy9fKai+e5mIifASPUVtoPrOEDyFH8//AGYn/Q1rIa4EsqQJJVAGIG8kRI8iaksdlTiVzMUgNADoTqBvuRzia13FbsW7ghT+jLbajyNQ9l7w7jXLoSTMaajcAUiN6jIGnVpFwJguwTWzmt3LaHaVUg/EGiTdmL0ScZc/tf4qN3MRodZGaJ91Q38ZCEyYBEwdY8qemSNR4A+wgS72VOha/cc7AkAx6SDFQ4Ts2HRHV3zMoJ9kctdl1ijOJ4iCmZSYV10kgxrMmdQak4Zis1gKSAyoRE66Df8AyoqUVYDUVHNcCUk7JJAzXLk84yx/dpzdlLf1rketW/nyqQSJ8K6zsY+FOfiCgz7UoPiCdxTqLS/p/EEY/s5bRQVzyTB8f7dambspZZFIDFiBM3G6DbXWp+JYgMbZJESsx6mfPpT8Pjwtq2QAdII9QOlKt5WhqFDeNTsfh+Yf+sb86w3bj5PL5vB8KO8W4IIZgO7jmWY6g+810AcSzBpMbQPfVtMYrese6nREzZH8zj3Zjs3csO5vR9XKNYM6kn3CtF80T6o+FW8esO/9M/fUdczE3PZw4UVBQkIwqfUX4UvmyfUX4Cpq9NTNNI9JD82T6i/AV583T6i/AVMaTU4aRIu4X6q/AVc4UoDGFE5TGg0MaR01qvVrhjxcFExzLaERXuBC6xuHEEZuUbRp08qVFFu2vqn4NSqtJnztmZIUjVMcVT6tz9Qj76sWcYpAOo8jln4ZqnSfSfSe94f1D7iTCnEVUvcSAMC3cbzXu4+1xUR4qeVi9/yv/LT0N6Re/YByw+8ILTxQ61xJiQO4ujzJtwPPRyaujEDp9/8Aho0N6Q9+6c/mH3k1eE61TucQflYefNh9kTPwqIY67/u//MP/AI6Djb0kD2l0o/MISNX+EcQW2pDBpJkFfT9/jQPD4u6TDWQq9RcLH4d2PvqV8Q2UlUk8gTA95gx8DTVXU7CRk63pci0WFTSP2gt65bRmNyR9wqg3FmkGII5g/d0rPnFYj+Rtf1jH/sFei/iP5K2P+I/sq7yzBOs6JOG/7D17iTsrAaZgQTvoabhMayAhY1M/GOlCrF+79NV8sv7Wp129cI8OUH+cpI+xxSrJdyvf+iq7hluMXeo+H7aiu8RciCfsFAy2J+tZ/qm/81er8453LPutN/5TT05JP+S6McH+IWF9o3+6pBiX+sfsoZZa5rmYHpAiPvn7K9xBuEeFwp8wD/2ijRkjPtTpa5/iEPnT/WPxr0Yl/rH40GKX/wCW/sJ/hpG3fn+Pb3Lb/wDHS7byP8t0voftDDXCYMkxtrtS70xEmOk0NwxdR4nZ/M5RHl4UFPxIdhAdk81gn+0pFHaeH+V6Xn+pbJpyuetCmwd0/wDqLo91v/x0hgLv+83f7H4LR2niPtjp/AP2hRq9NVLSOoguW82mfsIH+dRYjHZDBW64O3d6kR1zMNP2Uu0wlD2thbi4QzUgaFniw/kMV/Y/x09eKD+RxXxt/wCOl2zH/lMY8GEyJFNIqiOJbDucQJMZmKwPWGNWS3m32/iaoYiZB9q4xyDJIqxgfbU1T/W+P7amws5vDMxpPWR50+0RIPtXG+wBmh+cRyFKiFjhVllBYCSNd9+fOlVVPPnNlvJrDrpv4hUioSAw1B2IB5UfxN7EuAA9pNZOW3v5asY91CuLLcJcuVLMgEqsDUsokTVlzM8fSIzUSfMHfPbcxnX4z91SrdB2M+gJ+4UewmMxKiM9kAaCLXIaD6dWP4UxP8qnut/to1tM/d0+czgY/VfT+Y8f3acG0BEmSACBMztEannRfH47EMBOII/oquvxB+yhOODWiq2bxtEMy59NWNwKAJUxOYLtSLsDNcfS42U3ewkgw7n/AGd6fKy/5U5cJdP+yve+21VzcxDaNjpbaBiQuvopFMbC3lEvjLh8UAjFvA0Omjb6deVPW0y92SXb2HuKuZ7V1V5sUMD16etMtW3Y5FR2aJhVmB5wdPf0NDsVea3lLYq7Dt3YBvXXDFgfCQZXUA76VIC7HOl97I0XwOyAwDuV3+loTU62ubJ0uLQSQbFQqeFX/wCRuH/hI++kOE4mY+b3fXT8TQy5i7nPHv7r9yfsNeXsMwbI+PuBgdVN+/INPW0jsY/SGcPwq6Lii7ZZUJgFmUT5DKSZ3MeVQ2eF3rjMtq3nCGC2YBQekncxB0neqeEwr2m7z5zcfYMC91tCyiYueHQkHrVjG8J8eZrzICxKrL5TsZyrpzA16VnrbVVzXsYtH4d7lwdnsV/u/wDzUpf6P4kb2UHreX8qp4ng1sb3CssSNbhBBiANdhuJ5MKoYjgmFDFLhTNJENb1JBjSTrrVBiRdyTgRTRWE8Vw69ag3EULIErcDQTtmAAIk6T502xhLlwwgTfKM7hcxAkhZ1MUNHBrFqblpQCMs5UyyM6b6668qnbh6XFzXNQS0KVzD2jJGunLl0o1NfMvsYu3q073DC9msSfoWv6z9lPHZfEx7NmfO634JQ232bw31Ry2srGoB+tSv8HwyZoEsqsSO6UewpYicx6VVn1mfbT0lzF8HvWgGui1lJCyjliCTAkEDSSNqZh8C91iFNsAbls245ACftislwbjuGv3ItWXVlXvAzBAIDoPoknmPjWmbDq6q1yYJYAAAiVIkwdjqKnUb5m3ax9u9Iu5LiMGLft4rBL5NeIPwIqFWtf79gP66nWsDZJCrmEmPZXn76k+ZWQYJf9Rf8VVZ9ZloT0EhvNaUD/WsLcJIAW1clzPQTrG/pNK9YAI15Hy6UziOCthMy5jlI9oKI0JkQT0jlvVu4ozL6xWbsw8zu6Xp8bqSVFicmXiuJJAGJvf1j6f2qmscZxDMZvXiBoSXeNOWhjlW2tfJ1YVihvXZDEaBY0Mc9qt4Xshbsq6q58QaGKIWXNpIJXca/GluJy2l0TA3ZG81xL2YlmFy2T4joPGOZqfjnaa1h7ndudYnZjpJHIHmD8KJcA7LrhFvMtx3zhfajSC3QedDu0nZ27eZzatg5rZQsSi7lyBLETuDHmKLI2mpVO3qoE3UfZ49mkd3BWJDSD4hIMHb30X7N44XXBy5WX8/PzFBODdlsSGNx+7BdFVgXQwQBr4SQaMcNwbWMQitHiBggghoydPMnSjU17ycWksAVH2mjw3aF1VV00H1WpVVw1iQfDPiYe0eTEda8p7+sRSVzxlCJW1ciBvl951brNCsTxHM4JUrovhiTo5ny2JoDheI4rRYaIie79fKrfDLzMVN0DNoNoiDI028vU1TcQwWWO3gwnhe01stetqCWsKWuCPZCmCfPXkJNCMb8oWHUlT3kjcZSD9ooJgLeJS5euCzcLX5Fwi23iDNJjSBr0qh2s4HeN0Olm42YAnKjHUach0iq+kyHO80XD+2i37gtWMPduORMZ0Gg3PiAos83bo0j/WVfU8hftvz8lPrXO+zfDL1vE22u4e8LeaGOW4kBgRJYRABIO/Kui8OKsRprmzAk+ZIj3x8fKoPInQgpWr0EyPDUc4qwGIGa4jakCQWB0nc+XOtJjuH3Xw8CCTdDDxCICtsfVqpYbs9iRiMM5tkqjJmOZdArA9aNcI4Uym0l1AVW4ztJ8I/igM0dR3mh6elVOfeAOIYVrdmyX0AxSsf5sW7n4mreJxi3MKRbZS3eropgxkYT76n452b+cXjDFbAzOEtBAMxaOZA9mKHcd7FtbKnDq/jOV+8I5FQGBUkRrMb6VmXAap0KjFDXmCxgbxPs/aKJ9pgxx91ZIm5oZjT9waWO4Ali3bufOLisXCkXbGy5grMp2GUkHUmQKqPN7FqvzhLxJB71VCF+ZBUkeKfv8qYcHiZNiZZqHvWkw7/AKYEwq6kAznt6euhovw/GLibK5SGdJUweh19YIrn2I7PXr9y64QsEJy+EkEAKdxsSDMb0TcnBKGMWiLjZCVJLJCNkJU7hmZZIOxOmxhz8Qrmb41IQhhCnDcazYm5ZJWFb4wSJ33IC1JjMBhzdxTYlbZ8bsXZCzW0k7NPh8JBGXbXrWZ4v2iVryYm0oVwR3kaZwdDmj0Bn1qPtbxnvMQ63Ebu7i+E2maSGH01mGIbr9UDzqgpIofWTqANnfxCvAuNThhauLdzFVVLjW2CXIdSIYiJyj7DWjfE20w4e40ZMxMbxP7IHU0MweIt3cOyd5cgEEKbmgggwQQBAKaRrqff5xrFMmFDBgAWzEAAOPEACpMgwfLYmlbc1NtChNJPm4f4PxS1fByZwVCyrqVaCIBhhqpg6jTSpuJ2hmumdSHET1Vh+NZnF8bfLa+bsTcuSDcIFwpbEMYAAmGYKJ2k1bHE7y3TZvXGuDu3ZGdMhzJAZdIUzmEHTT7aD3OVsRG4mJ7B4PKwu5lhsORl+l/GrrHTw710qyk2E1Ah3+63XP8As62Ja22HGJtYdbc28rgEsc53O4lzEjyrYdnuNr82Xv8A9G2diQ0gTCqQDG4ZTpQDvNCD2yPmDCuFtqGQ5lEOu5EiJn3GK9uJ+k+H90UI4txdEfDm24Ym6BpPsnNMiNRqKvXeKYfNJxNoHTTx6QByy6UwTZmTr8INR3EF/Queik/AGq7XoIJPOlj8SrWmVHV84gZc3PnJUD/Oqt5vZEcx9ulQ89DoQQrX8poMVPeMyiQWJn1Ne5G6GKCMiDUge+oWRGPsx7t6k5JQ9mXyf4hziCnuLo1BgEGCdmGnnU/ByGtkkbXD8GVI/umgaWEQTlA92vL386tcNxhRRGzAExlOwjZhH2j38mr2bk5ekKYtKm95oEtrG1B+Mwt3DEcrrj3Min71p/8ADnI5xHPLb/A0N4i1y8yXFLwjZgW67QoXTz3NaFhOTHhyKwJEu4vjQsu9udmY/rEt+NKguMZXdmuWZcmCdRMaD7AKVTqM37YlByRHin1Cn8K8S6wESNf5if4ajvPyMe6lbYaSfSdq5tRnuDDjHiMfEMTBy/qJ/hpl59dY3+qv4CprqAa5geoB6eY/fSocVl0IaeoEyPL9tIsfWbJhxeFH2je+M7mpGvtHtOf+I069xAG0tsIoA+lEsZMmST1qpeeI9BRqPgxjCl7qBLVsk6w5naC32UXxHDXsYR8RdOoIK29yQcomeTEkiJI0G0mga3ECg960xsE9n35h9lHe0eLy4e81kNcVLIOZhNuQ0T9WdFMefnWmJjrE872gi9ulAHPj0mb4Hxm43teJ1j9GIUsNfEIGpn7h1o9xK6bqkW9HVQe7Es0kSsjltB10BFc2S9MMGIccxM6cwQZotZ43ixYuBbj5fCgcZZQk7ZiM2q5tAa9TL0nxa0oj0M+fx9V8Olrv1hXDXb126ljEWzZXMrG1mlbgUk+ICSYIXToTRjtmLZwy3bduz3toqyuq5WEHxjXdcoPrWR7KYpmxIS5cnNDZ3aCjWpZGU8iNRBIBDEGiXaXhDvcITEB0klUuXRHiPhVSPDI1WGO43M6cRxaMgUkCdQyasZKi5S4Z2oNu4SVlSBozCQYgtoIHKAIgc6s4XjAxV4W7toA282R1VTJczJUgqxJG8dOlR8L7NrLI1jvyQ0P3mRRAMKpEjMR8c1Vb6pbLKrmwywwRtXUfVJ0MzOhAgMOtJgGYhRvBSQLYwn2mwNtSotd2ZOVlRcrEFfpLmgnN9UfSg7UM4bw3FX7PeqoZMmpLw0KPLnHlUPD3N52/SEQhfMN5kbDc6nYagAnlRRrF3D23PcWWa23MjN4ZAJAaJ1mD7xyrbIOzpCnfzMk/22WG3iT9msRh2sm3cupba5mBLaSCuVGHgMyd5IAKg7ihONw2JGZA02jJIBkHIwAaIkSdRzgHbnWwLXcWwsrathiSVYaZfaOViJME7TtlMc6I4nA4jCFLl8Mqkx4HJkDU7Dwj1HuobKVBUGr3qGgMQxHG1zy9fvYcWlBzAFgfaAQwJTUSJ08j7q1d3ilgWBeeWGVQQhAILiCFBGi6ctN9qyeL7S2rveh5YAhrDMSSp2MqdGEE7+u9UMPjrDtkulwuylIGusDUHQk/tqFThmG17yy+m1U71tNDhONIL04driW4llMEzufZYaaKZIMSfI1VxXCr+LvG62a2mUCVSTIBJJGkTB18hTLHZuw9osrXDeykgFCFBXcHw/jTcbib2GI37kgBWQicwLaNOxkMNtYMaipdkNlBRggfhzYnnAOE3Evk3WMKYUEEZyw00aI05V72c4Jact34vvdl/wBHbB1CkgwQAJ0P0taz3Eca9y4WZy3v29P35VvuzlprOAS+15mCHv8Au00PiAVLbMDoCQrbbFh51WTHoQMTuY1yBjoA2F7wvh+A9zZYmGVPF44zqrAMM/pMT5VVxNsFMyKCNNVEjqNRQvspxx3xTJc/ir9s28p20BkCdToT8Kz/AA+zi0vPbAYd22V5JCnK2oMbg5Z9IqMeNXBLNVTqHVZE0oig/wDZs8HYa7rrVy7ctW1PiWRyJBNBcfxFgA9wi0TuROsdJ39YpnBuLWCSVRw40ztMn0PL7K5wp5nc+di2k0v7zQPdtshUXASygLlmRoZk7bgHyNVUw2ZVIGoHPnXjY0HUAn41JaxIAltJ5ClY4my4mUSpjcMwjwzG5jSlwq0hfK2RTv45A+I5+v8Ane/hNY2JqpfW3cdCuhLAEGYM+nnTHO0b/how1ZxSAASNP5x/KvKoXsHck+Ee4ClVaj6Tm0J6wCl2eev9Ffyr174UFmZdNy2UKvqSIHpUeL4mttGuHSBOYb9IXzJ03pcN4aDF/FDO51tWd1tzrr9Ztpbf0oVbkZ+pGPat5EvEw4/RpcuDebdnwn0L5Z92lP8A4QURnBtk/wAraCj3sJQe8ijAvXCZXSOSj/KpLNwscl4AgzqdCNOc1RRZzr1+W/H2gm6DEgD0hTp1EDUfvrVfvSd4Hqo/Kp+PtawoS5YKm0c0orSysdQw5SdQQI9JFZyz2tuAklVVJkgakT0JEGo7ZO4ncnX46GvYw0XP839VfyoVx24xOXOQIgqDAPPUDQ+/pRa5iy2pOkSCfwrO4i7mLMhDQdTpAJ6kGBOvKvQ9nYgSzt9BOH211B0rjUc7n6Sras9BU5K5AACCCS5nRvqwORAzdfaq92e4I+KzRdW0FYDU+0YkgagERFanhXBcuHuYdj84W44/igMuUyMxJME5lkdCJ1kit8nXojEAcTyU6R2AN8zlqYszIMGZB6UVXGuy5nbMW1Pu2J86udt+zl61fuXQgNsnOTbGiE7hlHskH3a1D2f4T84YISVUZQSFZvakAQoOmhrnGVSNbC6mpxsDoG0vcI4xct+MktrJgzpy56EAQPKNKguY5L1w51UhtfME9CNZqbtZwUYZfCrZCxTxKwMrB5gAjfaaJcA4FbxTZ8yW3QZGKgGwzIqkMWBEEjQgAyTM6Qb6bKiEueCd5OfG7AIORM0t+4MSFsrkuJFsZCQSVBDEkxDHWdvxq9xDhWJsot26j2gzamQSzGTBAJ1OpmoeGYlRjL3e21IZ2zCTpq0hfUmfdWwR8Nd/Q934jaLGHzQtvmoEgNtHn1BrDJk/2WeP6mqY7Tbn+5j+C8XyXxKqyNKuGGn9LTUEHn61oe1fae2VFq0LZVjmuZSWkQNA06ag7cqyfaDCfN7wQZgQisxIiS0mQp9nwwInl51PxThz27bXS+ZQ6LbZV8NxbquwcE+SQRuDodq0JR8ocyBqVCgj34OlxS6MRoTliSWg5QDImXyLG/i8oqLG4BsMAr/xh+kpMQfqyBI8+oNEuA8cuW7S2EtBiCWMKWLE9QBOg09I6ChfabiF3E4gFwVnKqW9sg2iDsZ5+lWc/wDsJVdq/wDGR2vgAJs/+2l1OM32wxQC82ntAEoBsTI228vfVngPaFrdtkbLcUG53iuJ8JOYNoIPiLAjfXTaivDzi2UG3cFoQBbQFMpAIEODqT11HlWUbCXWxF2yvhJzSFMLH0Rp9GCu9cylDdibkOKMgv4cGSugZjlHQT4QfdArScNe7/BdwozB7YkifZVboJgcoEmveE9nAbb95YvOyqsZWCyWMEpPtZZmOgNeYWy+Ge/hr5MPadWIiRmXw789RQ+QvQ9CIlTTv6wFwrGYh76XER7rWzMKsmOe20ia6BxTjSXrZuIma4oAgyrTtleBOmuh1Ee4ivk7tJbtG6txlJZA0qu8DMoLRPM+h3mivFHPzgKRbuNcQZu7WJyltXB5wfgo5VSr3X08bH+PEbO2FdY5sfzMvavM2IR8RYVUClVAzRMjXxHf8q2vBRZCLaTDu9m9Ksx1IbkBMFSNCD5UNxbLEXLeSNQ0REfYai4Jx1biEG6EViA0SMonUgZgFb+dFYkHwJoG1E6jvCHE+GmwgJaCgi5mMSZjMJEQekmPeJr4DNcVrieJVEswMgT59f20B4xxpbt92dUuW5AXOJ9nTMJ2mr2CuWZBQG0TochgMDyI2I91dy+y2ddSkX6cST7fOL4HWxxfMKtcA6z6ml3tQ3LDBcwkqedQq8V5uRHxtpYUZ7mHImfFqxkEHzNH8znUkyd9P/6r2qeHv+EelKjaZ6T6zLX8J3mLs2GIKr42jY93oP7UnzmimNvvlZwNPuAqjw2ywxneR4MhTNI1Jy8pk7UdwQFxCp5iNtip2+P3VoZ4zNqNmYLHG9fcAkmdAv0VA8vx9ascNx92z3lprhIKeEHWDIHgJ20nSr/E8Hds3VZEJIOvSPx9Kp4ThdzE4jM693bUEsV5abAjmWiB60wL2k3Ri4vxG3ctWsNIGqtnPrqPUmaqX+zv6NnLKqyfpg7DlAJPpHI0FxNsg6mT1q1iuKO1pLR0CmfX8q6GwspAH7zNcqkEn9ocxmOttYuhXOYJAGXcbTM6ekUYxHc4yw1uxkQOqi2iW8jIbZmHbTP4s0Sfpk6TNYu2wFm6zbkBQJE+I7wdSBA261TwONuJ4UcrOunp9mlTkwhWAX5GbHqTkW25qps+xXHckWStssmodh4uh3B1iBpvHxJcR7WBLjhkR8oQroMkgnQQNDBn1B2NYHDXSpzb9at2cEbqXrxuKDbCnIZlgxy+D00+NbjpR3NRG0xPUHt6b3mr4Z2otHMHQNbcHvEn2QZEEmJBFBeznGmsPcW0rG20mAZIgwDr7uf31mwp3jSSAfMCfuq5gyREakfH1FC9Oragvn/sk52XST4mt7U8SbEqll86KELMPDm0KxoJCgkE7zprVfhfAC9p2sYh7bKCWV4yMFAIEJEHnJB+yhnDsO+JvImZULaAsTlkAkZjvrEe+mWOLtZYhXEZkJPXISRHlrWi9IBiAOx8+lSG6knITyP5kF8EQ5bc5ifM86snDOLmayxZ1TNNuRMDMw01IgT7qLJwxsWLt+wiqAf4tdjO4SeY3I89OlCuHOtu5BY2xrJA1GhEQeux9a6jjxsdq28em051yOq73vBOOwb3Wa6oLAnUkyZ57mTWp4zikbB28ILL23Fu3cCwMiQuYvKyfEGaSdiTIG1DuxrqbqLdMWy2oJiSQefKY+6tP22vW7dmbWQG5+ilWzMLS+LLv4fEQDv05V5+QI7hRyT44nZj1KpY8D7x/Y3CWLWa7Zdh3ijISuYrOuWD5xqazvyiqtzGNcDknKoPhylSs6HqecjkRTsJxdktq1llDrCkGDoOqnfSqONUXC92fESWYcjOp9KfS9KxdmbgbQ6jqVCqq+d5a4XjLlu0VFtrhKllOZun0gPbg66zQ5VAUiyztdu5UJY+yCdYbTyG2lR2ce9tGto0K2sdPTpPOiGCCrcQDxrnEkD2tR+FaJ0i/EWPz/aQ3UH4QJqey9+8iItwyRmQsSd0JUx9bUb/AH1l+OYa7bxL3VvFrgum4CN9SGEA6SJjXTStV2g4vbw90FD3mYFihWAmbVSpjWWmQSd6z2Awj3+9YZSyobryQpIESR1iZio6TpgxLNspG0fVdRpAVeQZLgOJJh4a0bqn2mW5E+WXw5VM6MROgG1E+ynadFvu1xQzP7VwbnTmOYnXT3VnsIovZrLEAkShJiGAka8gdR755VewPDr97FPcW1bXKRKqVFvQCYjeSCT5k11DDiw3Z2PkznbJkzCvI8CaDhvGhe/1fEWCoI0UjKAmU8juuh22isNfUW3aB4SeY1jWPQwfsFajErdci/eIWAFVYAKpcJ9rqY39ORoN25xbZ7TZfDBGcbHos9Rv7/WuDC6qSpF3Ot0JAYeIKVy9yFBOkAKDy12qRMSy6TUHD8cbdxbltoZSGUjcEa0U4zaa6zYjPauM5LutosSmgJLAgFRM+Q2r00yFRzOF0BPE0nA+2627Xd3refKvghRBI2DSdBzJHSI1NXeDYdcTZ7zMEaSNtG6zG3urnSPr5Vp+zmOFshMxAJ05iTvIqM+I5kOkC/n/AFL6fN7u4YkgfL+xNZbwLgAC5a082/KlVPMTqoWDtGb8q8ryvdM36T9p63v+P9Y+4g9sBwy3fJtLiDkPhIvqQSNxlKlh+tz5VteG4HDvbS7bU/pFV9/EMwnXxROv2VD/AAFw94ZMLaY7tmUM0nqSSSauri8vhyFVGw5e4z9hrNmHiYAGPvcPtMIyqNY1YfDUGg/ajhNy3Yc2CrNlJCKBI6kRuwGv3bxRa/jdMwAEamNxMawNaYuJB1DAmeVSHo3AixU4NdfX31Y4ZZZw+Qv3hGVVCSGDaNLT4IE61ssZ2XsPi7t684W0zlhaEgkmJk8hmnQdeVSNw9QpUXVtJPht24XSZMtuTHPSu1+pDfhmSYdO7TEdobARsqTAGsxyjoNNaF4f219furovaO1hmw10WbIDLbLMyjbVQCTzJOnvrB4G6qjUST1rNXJILbxkDgCTBhV7BsRavytpgE3cw6lpANsfSPu001HMK17xGNPKpUJuEKK7e8rLOftkGXsbjFNqzbRMoUEEk7sYzHbSmWGgTMGZpYvDiQTqQIkc6ZacdSI5ft/ZSwOATZjyLY2hzggkvcuWGvW1XWJGQmcpJUjcg6E669KpcewqWFtqSWvOJcaQJ6fdUHDMWRftrJVGdQwk+LXSeutX/lEtqMWNQB3S/e1Tmzs2QKDtLx4lGMsRvLPyaXbnfkZj3arJWdNen21FxziXeYu7cEAEldhqIyk+p11q5wlfmuCa9/tL8BJ6GYPvEt76zjWjrP2ETSwJbMw+keZqVVP1nl22ElD7W6nqOvwry2Nf38qfwnh1/EORZtPcZRqFBMevIbfZUmJwzW2KOrI66Mjgq2vUHWtOnUATLMxuT8NtWzdQXywtE+PLvHloZ1g1LwO+gvZjm7sMw5TlgjqBPWoeGY1red7dxluKkIqqWLZtI/mxvPlRn5PLcXSly1LMumddVjTTMJG9Vl6gYzxcSYS4q6mUw6SyqWC66sdh5mtL2e8YW7I6gREEGPQUJ4/h1GIuJorBiDpofMdJEGpeHE27ZthgDBKEkAHyk6VyvnYil87TdMahrbxI8fjTcuuSZlz8ATH2RV7grWwLveG4DkbuyhgTBEPoTlJK9OfWgOFXXrRnhPEnQvaVbjpcAF1bYkkA7D6p3E+ZrsRwuO22qcrpreh5iscPKZbxvWwWjLbBPeETlmIgazW5wOEt2pWyh724uaCwAGadpIG8+dZfCcBuW8YHva2bVvOtwiAFEwOisDMjr5EGqGO7QNdxRvKYUaL5KNviZPvrzsjtlbST8PM7VUY11AfFxC/aDE9zdt2H8UeNlcloOwkN7z8KH8S47azZDaU2nEXE2HkVj2SI3HlVXtzje8v23Ojdws/FyPs/Cs/iLm2s0ioG0SseYft8BQHvLbi5a0OYmDb6i4Bq3KIiY5VGnEL2Ga4li5+jcQcyr4hH0lIJU61Bg8QbSkIxBYQ0H7PT76g70VqpZfMhgG4E88W2lTYW4Q3i112Mga/caiLZtP3FW+F4G7dcW7SF2bSAN/XoPOr7r3dye2tVUO4XGHINbg06z9ubWlXQ+D9iEt2US5BcDxR1OvSlWnv7+sx90x+kpYfiiLGhHQ7SRy29afjeIqyExBgtAkiNh75IO1Z7EvlJswcykZpYZeZBE67ZdfWpsBxJmc5raMMpEEmPiZHptXjmejccmIPh5g6g7CJEgw0GCdKLW/Y8B2Ya6azO55xFCb1/UqigTqI1PpP7zNWcNiQEYQc528hz/HlWYcEyRBvEuz2Ku3GuLdtZJ8Klm3WAdAv1h91BL+He013vmU5SAcswTE8wNNfsrU3eJvbm2FJI/HX8axeKW++JLhGfNdBZMjZYB+lIjbnzrrQfCJJO82eI4WBwy7bspmuXrQYnm5IB0kbDkv4kmuRXLbKSrKVIkEEEEEctehrrF3F3whOU6DQD8NK55xnDMNWEmdWyOGJM7s2/2VYigruWILRoIk9M0xPSYNSYS9ExRfB8Jm0HJJOXRQNAdTr1M0Hu4ZlYiP3/AApgwkvzg9eVVhe11r0Idop+KtANlB1Akkbba7U7hUI2bYKdGGoPTmK6FxPh4aMQptC9atsqG5BQFohjII8PiIkRqTpE1y1b8aTRvCdrWCBHBMADlrlECZ6iQf6THWYEOCaqaYyFsGaf5UXFzDWrozK1u81ojbMIYZgOYOQEeTVznOTzNWsXjHa2Lcv3YbMqEkhdCBv0UxVJDVJairkuQxudW+RvjC2rLoB4u8Jc+oETz2/umjXb+/YvKly4ltyrKJIBOUnxCensn85rkPBOJvh7ouK0A6ONwR5itD2oxIaxbe3dMghWURDGPa38JEAR6e/RXImLJvNtw7F20AyIoHkAI90aUVwWW+2bbJzHUjbX4/CuScK4uwUrduXV81A0HLlr8RW24N2msWbSZXhWGaTE6nLLT7Pi19G8qM2QlaHmVgxgNZ8Sv267K2GwzYy0xW+GHeAkxdzELoD7JGhEaQDpzrELhYGp1q/i+0j3yc5yrMqvIeZ6mKGYtif33+NQSPEsA8meXXVef2fnT+H47I2ZQAevOqIsSrNOq8vUilbskZSdmMDzqSxMYmnXHHEFLBuMFuNDqumfpy+tHqKB8Ewb3WVVBJMSB0o9wXgBGW4bxS4NRlA097AzUHZwGxebuouZCQxO0TEiAdvwoQgSXtoW+UnAKvzL9DlY2jmfTxTlITTmozc9mqtc7DWjgfnSXW71XClWgIfEBoMsk5TMTyNFO2naoXMJ82OgJSCDJi2VPToKq4jiN7EYWzYt2862f4twxBHkV2YRp18+q1GNVAgHiHZ66rSsOGGYFTvO8TqdeUUPbBtDeEgqMxB3jnING+HjF94RctXZAARQrZdSMxGVSGJ03I59IrQcOxQZsj7NKMG5ToQQdqRyEcy9CtxOdpiJOgrtXyUcFFrDC/OZr2u3shSQB+NcUxeFNq41tt0YqfcYrsPyb8UKYVENwgCSJMiCZ0nb0q2b4ZkFs1Ogd2elKg/+kC/yi/ZSrPUJekzBXoeGuoAdiZ1Om/lT+DYCWaGyr5jrt9n31bu4hAqyVysNwNNOnIz6UXRlygLE6Zeg059NJrkc7TRAGNwDdw0OyzOTp0IBP79auYHBlofSM0R6bz76lIE6xBA2G8TvpJMnejGFwwygxIjQA8/wqUSM7SuuEXoCeZM614+D6CP39aKLw9sxaQAfLr+VWVwh6V2K20wIMzjcOJNDuPdm3cIFRmXUtAEzpGhI5E1t7nDmIIByk7HePsFTYfA3OZzee35z8aC0FFbzB8P7MOqEFYE+GQAeXIExrPPlVfF9kmbeI8wBXTRgG5qD76b/AAYdTkE/fTDQIs3OL47sO+cjujlmQyskECN8zArrIO+lNXsAQGZimYycq+yvQA8/hXZrvCyfon3EaVGeA2j9FxpB8cg+4saNUficPs9h7jMRlCjrJMREx4R5/Gr+E+TYE+JjuNug5e+uvHgZmVUj1j8DT/4JI+hr16/DWjUYTnzdg7bCIis/xj5LbvtWGWeh0B/KuyLgmGmQ/A/lXowzbZfQwZ+6gMYqnCsH8m2OZodEQcyX39IBrb8O7FKs50AEABZmImY8IgH8K3fzeBPi8xFOS0SD4WjlIM/CgsTHU5/iewVnMHQZTrpAKmecHnVN+wSiYUOx1k6fcNK6U2EnY/YfwH41C9pgQQD0EA/lS1GKpybHdg/qoQfIn8Qao8O7EYlHLbAqQDz1g9I5V2m3ankPTb76Y1v/AC0n8aYaOpyAdiHUkuMxbnBn3awPWKt8Nwr22Ki0pUmBJHhyZZBkaEkzPr0rqBsk6Qd/v6darXsCmbxIhJ5sBP3UiY1NGBMDwxLltW7sDMJqniewtprgu2nNl+cAFW/pLI+M1qhaAHptzr3J1ZdeppbxTL4/sNbuhSbpW6p0dbYynSIZSTPXeiXBOzndKQ7I5kewhWdtTLtrz99FCv3cv8taaXIoswuT2+GW+v21hu3nCxYvJft+zcOV16OBoR6j7R50b4j2qs2bhtXMytpBcZUaR9fYdNaDDH3cTcbvLdt0QyFRwcoI3B3cx0FFHzKTmFeF9lcFjLa3r9s94PCWViMwGxIGhgaTHKtPw/spgrQGW2DH1iWn46UB4Fi7ASFvr4jomxB6efqKOWbZgSfhPw/bS3gwowv82ww+hb/UX8qVDcvp8a8qrkzDJun9H8DU9q2O8Gg2PLyNKlXOJQ4lrn8PwrS8MURtypUqFlGWE3FTv7PupUq2EiCMdcOup5860XC/ZX+iKVKgQMtmpBSpVa8xTymClSohG86kFKlRCJKTUqVUIo6vRSpU4RjVHb3Pu/GlSqDCennSIrylT8RxMo6U27aWToPhXlKlAxjWxpoN+nlThbGug5cvWlSoiEHcb0t6aa/g1DOyZzXWVtRGx1HwNKlRHNLcwdsjW2h0+qPyqvhsBa0/Rp+qPypUqYkyf5lbzA92n6o/Kpu5WPZHwFeUqICM7peg+FKlSolT/9k=",
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
        "data:image/jpeg;base64,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",
        "data:image/jpeg;base64,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",
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