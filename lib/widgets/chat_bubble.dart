import "package:flutter/material.dart";

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const ChatBubble({super.key,required this.message,required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12)
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$message',style: TextStyle(fontSize: 20,color: Colors.white),),
            Image.network('https://w7.pngwing.com/pngs/124/394/png-transparent-of-smartphone-and-app-icons-mobile-app-development-application-software-installation-app-store-optimization-mobile-application-electronics-gadget-web-design-thumbnail.png'),
          ],
        ),
      ),
    );;
  }
}
