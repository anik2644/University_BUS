
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../Model/StaticPart/FirabaseStaticVariables.dart';
import '../../../../../../../Model/LoadIndicator.dart';
import 'Constant.dart';
import 'components/ChatMessage.dart';
import 'components/body.dart';


class MessagesScreen extends StatefulWidget {


  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {

  Future<void> FetchMEssage() async {

    var chatdocid;
   // FeedbackBody.FeedbackMessages.clear();
    print("this is fetch ");
    await FirebaseFirestore.instance.collection("adminchats").where('users', isEqualTo: {
     // friendUid: null, currentUserId: null
    "AuthService.email": null,
      "admin": null,
    })
        .get().then((value) => {
       chatdocid= value.docs.single.id,
      value.docs.forEach((result) {
        print(result.data());
        FirebaseFirestore.instance.collection("adminchats")
            .doc(chatdocid)
            .collection("messages").orderBy('createdOn',  descending: false)
            .get()
            .then((subcol) =>
        {


          subcol.docs.forEach((element) {
            var data;
            data= element.data();


            FeedbackBody.FeedbackMessages.add(ChatMessage( data["msg"].toString() ,ChatMessageType.text,MessageStatus.viewed,false));

            //ChatMessage();
            // print(msge.text);
            // print(msge.isSender);
            // ddemeChatMessages.add(msge);
            print("hellon world");
           // print(ddemeChatMessages.length);
            // print(result.id);
          })
        });
      }),
 
    setState(() {
    print(FeedbackBody.FeedbackMessages.length);
    FirebaseStaticVAriables.isLoading = true;
    })
    });





  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: RefreshIndicator(
        // key: refreshKey,
        child: FeedbackBody(),
        onRefresh: () async {
          await refreshList();
        },
      ),
      // Body(),
    );
  }
  Future<Null> refreshList()
  async {

      FirebaseStaticVAriables.isLoading= false ;

      if(!FirebaseStaticVAriables.isLoading)
      {
        LoadingIndicator oPenDialouge = new LoadingIndicator(context);
        oPenDialouge.openDialouge();
      }
      await FetchMEssage();

      setState(() {
        if(FirebaseStaticVAriables.isLoading)
        {
          FirebaseStaticVAriables.isLoading=!FirebaseStaticVAriables.isLoading;
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (BuildContext context) => MessagesScreen()));
        }
      });


    }




  AppBar buildAppBar() {
    return AppBar(
      /* leading: BackButton(
        onPressed: (){
          AuthService.ddemeChatMessages.clear();
          AuthService.FetchMEssage();
         // Navigator.push(context,MaterialPageRoute(builder: (context) =>FunctioN()));

        },
      ),*/
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      /*
      leading: BackButton(
        onPressed: (){
          AuthService.ddemeChatMessages.clear();
          Navigator.pop(context);
        },
      ),


       */
      title: Row(

        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          // DecorationPosition.background= Colors.black,
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.network("https://static.wikia.nocookie.net/titanic/images/1/17/Jack-Dawson-1997film.jpg/revision/latest?cb=20210201152534",),

          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Admin" , //  AuthService.name,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active now",
                style: TextStyle(fontSize: 12, ),
              )
            ],
          )
        ],
      ),
      actions: [
        /*
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {

            AuthService.ddemeChatMessages.clear();
            AuthService.FetchMEssage();

          },
        ),*/
        IconButton(

          icon: Icon(Icons.refresh_sharp),
          onPressed: () {
           // AuthService.ddemeChatMessages.clear();

            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) => MessagesScreen()));

            /*

            FirebaseFirestore.instance.collection("adminchats").where('users', isEqualTo: {AuthService.friendUid: null, AuthService.currentUserId: null})
                .get().then((value) => {
              chatdocid= value.docs.single.id,
              value.docs.forEach((result) {
                print(result.data());
                FirebaseFirestore.instance.collection("adminchats")
                    .doc(chatdocid)
                    .collection("messages").orderBy('createdOn', descending: true)
                    .get()
                    .then((subcol) =>
                {


                  subcol.docs.forEach((element) {
                    var data;
                    data= element.data();
                    // AuthService.ddemeChatMessages.add(ChatMessage( data["msg"].toString() ,ChatMessageType.text,MessageStatus.viewed, data["uid"]==AuthService.email ? true : false));

                    //ChatMessage();
                    // print(msge.text);
                    // print(msge.isSender);
                    // ddemeChatMessages.add(msge);
                    print("My_world");
                    print(AuthService.ddemeChatMessages.length);
                    // print(result.id);
                  })
                });
              })
            });


             */

          },
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],

    );
  }
}