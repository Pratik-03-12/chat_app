import 'package:flutter/material.dart';

import '../utils/textfield_styles.dart';

class LoginPasswordField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  const LoginPasswordField({super.key, required this.controller,required this.hintText,this.validator});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (validator!=null){
          return validator!(value);
        }
      },
      controller: controller,
      decoration: InputDecoration(
          hintText: 'Enter your password',
          hintStyle: ThemeTextStyle.loginTextFieldStyle,
          border: const OutlineInputBorder()),
    );
  }
}
