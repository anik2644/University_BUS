
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Constant.dart';
import 'ChatMessage.dart';
import 'chat_input_field.dart';
import 'message.dart';

class FeedbackBody extends StatelessWidget {

  static List<ChatMessage> FeedbackMessages = [
    ChatMessage("Submit your feedback", ChatMessageType.text,MessageStatus.viewed,false,),
    //ChatMessage("How to get information", ChatMessageType.text,MessageStatus.viewed,true,),
    //ChatMessage("What are you doing", ChatMessageType.text,MessageStatus.viewed,true,),
    //ChatMessage("How may i help you ", ChatMessageType.text,MessageStatus.viewed,false,),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: FeedbackBody.FeedbackMessages.length,
              itemBuilder: (context, index) => MessageForAdmin(FeedbackBody.FeedbackMessages[index]),
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