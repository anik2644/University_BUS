
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Constant.dart';
import 'ChatMessage.dart';
import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {

  static List<ChatMessage> ddemeChatMessages = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: Body.ddemeChatMessages.length,
              itemBuilder: (context, index) => MessageForAdmin(Body.ddemeChatMessages[index]),
            ),
          ),
        ),
        ChatInputField(),

        /*FloatingActionButton(onPressed: (){

          print("floating action button");

          AuthService.FetchMEssage();
          print(AuthService.ddemeChatMessages.length);
          for (var item in AuthService.ddemeChatMessages){
            print(item.text);
          }
          print("i an chat boday");


        }, child: Icon(Icons.add),)

         */
      ],
    );
  }



}