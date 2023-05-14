import 'package:flutter/cupertino.dart';

class BusListBody extends StatefulWidget {
  const BusListBody({Key? key}) : super(key: key);

  @override
  State<BusListBody> createState() => _BusListBodyState();
}

class _BusListBodyState extends State<BusListBody> {



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          SizedBox(
            width: 6,
          ),
          Container(
            child: Text("Bus name"),
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
    );

  }


}
