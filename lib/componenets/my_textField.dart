import 'package:flutter/material.dart';

class my_textField extends StatelessWidget {
  const my_textField({super.key});
  final String hintText; // It gives hints to what you are typing
  final bool obscureText; // Hides or reveals password

  //Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.green.shade200,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
