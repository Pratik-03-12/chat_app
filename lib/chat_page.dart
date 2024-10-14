import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
        actions: [IconButton(onPressed: () {
          Navigator.pushReplacementNamed(context,'/');
        }, icon: const Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      message: "Hi!This is Pratik",
                      alignment: index %2 == 0?Alignment.centerLeft:Alignment.centerRight);
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
