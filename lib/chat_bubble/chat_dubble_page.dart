import 'package:flutter/material.dart';
import 'package:flutter_exercise/chat_bubble/received_message_screen.dart';
import 'package:flutter_exercise/chat_bubble/send_message_screen.dart';


class ChatDubblePage extends StatefulWidget {
  const ChatDubblePage({Key? key}) : super(key: key);

  @override
  State<ChatDubblePage> createState() => _ChatDubblePageState();
}

class _ChatDubblePageState extends State<ChatDubblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/image/bg_chat.jpg"),
    fit: BoxFit.cover)),
    child: ListView(
    children: [
    SendMessageScreen(message: "Hello"),
    ReceivedMessageScreen(message: "Hi, how are you"),
    SendMessageScreen(message: "I am great how are you doing"),
    ReceivedMessageScreen(message: "I am also fine"),
    SendMessageScreen(message: "Can we meet tomorrow?"),
    ReceivedMessageScreen(message: "Yes, of course we will meet tomorrow,Yes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrowYes, of course we will meet tomorrow"),
    ],
    ),
    ));
  }
}


