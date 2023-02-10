import 'package:campousia/Screen/ParticularHomePage/ParticulurHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../Model/StaticPart/ModelStatic.dart';
import 'LocationShareButton.dart';

class LocationSharePopup{
  BuildContext context;
  int index;
      LocationSharePopup(this.context,this.index){
        print("hey dear");
      }




  var _noticeController = new TextEditingController();
  var _passCodeController = new TextEditingController();

  Widget NoticeAndPasswordField()
  {
    return Container(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Center(
            child: ListTile(
              title: Text("Location is not shared. if you want to share location fillup the below box.",style: TextStyle(
                color: Colors.red, fontSize: 17,
              ),),
            ),
          ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Type Any Notice",
                ),
                controller: _noticeController,
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _passCodeController,
                decoration: InputDecoration(
                  hintText: "PassCode",
                ),
              ),
              Center(child: LocationShareButton(this._noticeController,this.index,this._passCodeController)),
            ],
          ),
        ));
  }


  Widget AllReadyShared()
  {
    return Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ListTile(
                title:ModelStatic.passwordNotMatched==0? Text("Already Shared") : Text("Password not matched"),
              ),
              ElevatedButton(onPressed: (){
                ModelStatic.locSharePopupFlag=1;
                ModelStatic.passwordNotMatched=0;
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ParticulurHomePage()));
              }, child:ModelStatic.passwordNotMatched==0? Text("Done"): Text("Go Back"))
            ],
          ),
        ));
  }





  Future openDialouge(int index) => showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child:ModelStatic.locSharePopupFlag==1?NoticeAndPasswordField():AllReadyShared() ));



}