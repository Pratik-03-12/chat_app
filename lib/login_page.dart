
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Let's Sign you in!",
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              color: Colors.blue),
            ),
            const Text("Welcome Back.\n You've been missed",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown
              ),
            ),
            Image.network('https://inventionland.com/wp/wp-content/uploads/2018/12/inventionland-flying-apps-1.jpg',height: 300,)
          ],
        ),
      ),
    );
  }
}