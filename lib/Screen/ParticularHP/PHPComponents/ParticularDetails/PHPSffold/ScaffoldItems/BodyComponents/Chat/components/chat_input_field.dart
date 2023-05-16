import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../MessageScreen.dart';
import '../Constant.dart';
import 'ChatMessage.dart';
import 'body.dart';


class ChatInputField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var message_type_box_controller = new TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
           // Icon(Icons.mic, color: kPrimaryColor),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                         decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                          // hintTextDirection: Colors.white,
                        ),
                        controller: message_type_box_controller =
                        new TextEditingController(),
                      ),
                    ),

                    /*
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    */
                    IconButton(
                        onPressed: () async {

                          //  print(message_type_box_controller.text);

                         //- AuthService.ddemeChatMessages.clear();
                         // AuthService.FetchMEssage();


                           final friendUid = "admin";
                           final currentUserId = "AuthService.email";

                          var chatDocId;
                          CollectionReference chats = FirebaseFirestore.instance.collection('adminchats');
                          if (message_type_box_controller.text== '') return;

                          await chats
                              .where('users', isEqualTo: {
                            friendUid.toString(): null,
                            currentUserId.toString(): null
                          })
                              .limit(1)
                              .get()
                              .then(
                                (QuerySnapshot querySnapshot) async {
                              if (querySnapshot.docs.isNotEmpty) {
                                //  rreaddata();
                                chatDocId = querySnapshot.docs.single.id;
                                print(chatDocId);
                                //print("dound man");
                              } else {
                                await chats.add({
                                  'users': {
                                    currentUserId.toString(): null,
                                    friendUid.toString(): null,

                                  },
                                  'name' : currentUserId.toString(),
                                }).then((value) => {
                                  chatDocId = value});
                                //   print("Arrogant");
                              }
                            },
                          ).catchError((error) {});

                          chats.doc(chatDocId.toString()).collection('messages').add({
                            'createdOn': FieldValue.serverTimestamp(),
                            'uid':  currentUserId.toString(),
                            'friendName': "admin" ,
                            'msg': message_type_box_controller.text
                          }).then((value) {
                            //_textController.text = '';
                          });

                          FeedbackBody.FeedbackMessages.add(ChatMessage(
                              message_type_box_controller.text.toString(),
                              ChatMessageType.text,
                              MessageStatus.viewed,
                              true ));


                          // print("message sent done");
                          message_type_box_controller.text = "";

                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (BuildContext context) => MessagesScreen()));




                        },
                        icon: Icon(Icons.send))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}