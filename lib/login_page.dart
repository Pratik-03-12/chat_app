
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void loginUser(){
    print('Login Successful');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Let's Sign you in!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: Colors.black),
              ),
              const Text(
                "Welcome Back.\n You've been missed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                  'https://inventionland.com/wp/wp-content/uploads/2018/12/inventionland-flying-apps-1.jpg',
                  height: 300,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add your username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder()
                  ),

                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Type your password',
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder()
                  ),

                ),
              ),
              ElevatedButton(
                  onPressed: loginUser,
                  child: const Text(
                    'Click Me',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300 ),
                  )),
              GestureDetector(
                onTap: (){
                  //ToDo:Navigate to browser
                  print('Clicked');
                },
                child: const Column(
                  children: [
                    Text('Find us on'),
                    Text('https://github.com/'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
