

import 'package:campousia/Screen/ParticularHP/PHPComponents/ParticularDetails/PHPSffold/ScaffoldItems/BodyComponents/Chat/components/txtMsgforAd.dart';
import 'package:flutter/material.dart';
import '../Constant.dart';
import 'ChatMessage.dart';
import 'audio_message.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
/*
  const Message({
    Key? key,
    required this.message,
   // required print(message),

  }) : super(key: key);
*/

  ChatMessage message;
  Message( this.message)
  {
    print("in message class");
    print(message.text);
  }
  @override
  Widget build(BuildContext context) {


    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          {
            print("in message class");
            print(message.text);
            return TextMessage(message: message);
          }
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
        message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
             //backgroundImage: NetworkImage(chatsData[AuthService.indx].image)
              //  child: Image.network(chatsData[AuthService.indx].image,),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageForAdmin extends StatelessWidget {
/*
  const Message({
    Key? key,
    required this.message,
   // required print(message),

  }) : super(key: key);
*/

  ChatMessage message;
  MessageForAdmin( this.message)
  {
    print("in message class");
    print(message.text);
  }





  @override
  Widget build(BuildContext context) {

    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          {
            print("in message class");
            print(message.text);
            return TextMessageforAdmin(message: message);
          }
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
        message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
            //  child: Image.network(AuthService.adminProfilepicurl.toString(),),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDotforadmin(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}

class MessageStatusDotforadmin extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDotforadmin({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: Colors.black,//dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}