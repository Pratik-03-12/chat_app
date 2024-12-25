import 'dart:convert';

import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  //initial state of the messages
  List<ChatMessageEntity> _messages = [];

  _loadInitialMessages() async {
    final response = await rootBundle.loadString(
        'lib/assets/mock_messages.json');

    final List<dynamic> decodedList = jsonDecode(response);

    final List<ChatMessageEntity> _chatMessages = decodedList.map((listitem) {
      return ChatMessageEntity.fromJson(listitem);
    }).toList();

    //final state of the messages
    setState((){
      _messages = _chatMessages;
    });
    print(response);
  }
  void initState(){
    _loadInitialMessages();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Hi $userName",
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      entity: _messages[index],
                      alignment: _messages[index].author.userName == "PratikSaha"
                          ? Alignment.centerRight
                          : Alignment.centerLeft);
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
