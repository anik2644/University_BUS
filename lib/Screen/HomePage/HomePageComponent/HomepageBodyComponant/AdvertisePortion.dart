import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdvertisePortion extends StatefulWidget {

  @override
  State<AdvertisePortion> createState() => _AdvertisePortionState();
}

class _AdvertisePortionState extends State<AdvertisePortion> {

  
  // Future<void> _launchUrl(String url) async {
  //   Uri _url = Uri.parse(url);
  //   if (!await launchUrl(_url as Uri)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }

/*
  Future<void> _launchInBrowser(String url) async {
    url='https://www.google.com/';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

*/


  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {

        _launchURL("www.du.ac.bd");

//        _launchInBrowser('https://www.google.com/');

/*
        Future<void> _launchInBrowser(String url) async {
          url='https://www.google.com/';
          if (await canLaunch(url)) {
            await launch(
              url,
              forceSafariVC: false,
              forceWebView: false,
              headers: <String, String>{'header_key': 'header_value'},
            );
          } else {
            throw 'Could not launch $url';
          }
        }

 */
        // //Uri googleUrl = Uri.parse('https://www.google.com/maps/search/?api=1&query=$query');
        // Uri googleUrl = Uri.parse('https://www.google.com/');
        //
        // if (await canLaunchUrl(googleUrl)) {
        // await launchUrl(googleUrl);
        // } else {
        // throw 'Could not launch $googleUrl';
        // }


     //  _launchUrl("https://www.du.ac.bd/");
      },
      child: Container(
        height: 300,
        child: Center(child: Text("Reserved"))

        //Image.network("https://m.media-amazon.com/images/I/71JFeM1riUL._AC_SL1500_.jpg"),
      ),
    );
  }
}
