import 'package:chat_app/utils/spaces.dart';
import 'package:chat_app/widgets/login_password_field.dart';
import 'package:chat_app/widgets/login_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formkey = GlobalKey<FormState>();
  void loginUser(context) {
    if (_formkey.currentState != Null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passWordController.text);

      Navigator.pushReplacementNamed(context, '/chat',arguments: userNameController.text);
      print('Login Successful');
    }else{
      print('Login Not successful');
    }
  }

  final userNameController = TextEditingController();
  final passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:
          15.0,right: 15.0,top: 15.0),
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
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    LoginTextField(
                      hintText: 'Enter your username',
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return "Your username should be more than 5 characters";
                        } else if (value != null && value.isEmpty) {
                          return "Please type your username";
                        }
                        return null;
                      },
                      controller: userNameController,
                    ),
                   verticalSpacing(24),
                    LoginPasswordField(
                      controller: passWordController,
                      hintText: "Enter your password",
                    ),
                   verticalSpacing(24),
                    ElevatedButton(
                        onPressed: (){
                          loginUser(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w300),
                        )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
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
