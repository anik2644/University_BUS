enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
/*

*/

  String text;
  ChatMessageType messageType;
  MessageStatus messageStatus ;
  bool isSender;

  ChatMessage(this.text,this.messageType,this.messageStatus,this.isSender);
/*
  ChatMessage(String text,ChatMessageType messageType,MessageStatus messageStatus,bool isSender)
  {
  this.text = text;
  this.messageType= messageType;
  this.messageStatus= messageStatus;
  this.isSender = isSender;
 }

   */
}

class ChatListObject{

  String sender;
  ChatListObject(this.sender);
  String receiver="admin";

  List <ChatMessage> messageList = [
    ChatMessage("Hi, Please let know about us", ChatMessageType.text,MessageStatus.viewed,false,),
    ChatMessage("How to get information", ChatMessageType.text,MessageStatus.viewed,true,),
    //ChatMessage("What are you doing", ChatMessageType.text,MessageStatus.viewed,true,),
    ChatMessage("How may i help you ", ChatMessageType.text,MessageStatus.viewed,false,),

  ];

}


List demeChatMessages = [

  ChatListObject("Wilson"),
  ChatListObject("Howard"),
  ChatListObject("Ralpha"),
  ChatListObject("Jacob"),
  ChatListObject("Albert"),
  ChatListObject("Wilson"),
  ChatListObject("Howard"),
  ChatListObject("Ralpha"),
  ChatListObject("Jacob"),
  ChatListObject("Albert"),
  ChatListObject("Wilson"),
  ChatListObject("Howard"),
  ChatListObject("Ralpha"),
  ChatListObject("Jacob"),
  ChatListObject("Albert"),

  //ChatListObject("Wilson"),
  /*
  ChatMessage(
    text: "Hi Sajol,",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Hello, How are you?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Error happend",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
  ChatMessage(
    text: "This looks great man!!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Glad you like it",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),

   */
];