import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ParticularDetails/TarangaBusBody/ButtonSection.dart';
import '../../ParticularDetails/TarangaBusBody/ImageSlider.dart';
import '../../ParticularDetails/TarangaBusBody/NoticeScreen.dart';
import '../../ParticularDetails/TarangaBusBody/TitleScreen.dart';
import '../../ParticularDetails/TarangaBusBody/UpDownBuilder.dart';


class TarangaBusBody extends StatefulWidget {

  TitleScreen tItlescreen= new TitleScreen();
  NoticeScreen nOticescreen = NoticeScreen();
  ImageSlider iMageslider = ImageSlider();
  ButtonSection bUttonSection = ButtonSection();
  UpDownBuilder uPdownbuilder = UpDownBuilder();

  @override
  State<TarangaBusBody> createState() => _TarangaBusBodyState();
}

class _TarangaBusBodyState extends State<TarangaBusBody> {




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 1.3,
        child: Column(
          children: [

            widget.iMageslider,
            widget.tItlescreen,
            const SizedBox(
              width: double.infinity,
              height: 5,
            ),
            widget.bUttonSection,
            widget.nOticescreen,
            widget.uPdownbuilder,
          ],
        ),
      ),
    );
  }





}
