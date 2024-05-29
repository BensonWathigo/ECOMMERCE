import 'package:flutter/material.dart';
import 'package:shopeasy/componenets/my_button.dart';
import 'package:shopeasy/componenets/my_textField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            // logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),

            // welcome. You've been missed.
            Text(
              "Welcome, you've been missed.",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // Username textified
            MyTextField(
              controller: usernameController,
              hintText: 'username',
              obscureText: true,
            ),
            const SizedBox(height: 10),

            //password textified
            MyTextField(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ), //my text field

            const SizedBox(height: 50),

            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text(
                    'Forgot password',
                    style: TextStyle(color: Colors.amber.shade200),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // signin button
            MyButton(
              onTap: signUserIn,
            ),

            //or continue with

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Or continue with',
                style: TextStyle(color: Colors.green[400]),
              ),
            ),

            Expanded(
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),

            // gooogle or apple sign in button
            Row(
              children: [
                //Google sign in buttons
                Image.asset(
                  'lib\Images\Google.jpg',
                  height: 72,
                ),
              ],
            ),

            // not a member ? register
            Row(
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                Text(
                  'Register now!',
                  style: TextStyle(
                    color: Colors.yellow[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
