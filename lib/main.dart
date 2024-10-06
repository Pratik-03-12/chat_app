import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';


void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(primarySwatch: Colors.yellow,appBarTheme: const AppBarTheme(backgroundColor: Colors.blue,foregroundColor: Colors.black)),
      //home: const ChatPage(),
      home: LoginPage()
    );
  }
}
