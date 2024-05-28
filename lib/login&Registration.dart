
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50,),

            // logo
            Icon(Icons.lock,
            size: 100,
            )
            const SizedBox(height: 50 ),
        
            // welcome. You've been missed.
            Text(
              "Welcome, you've been missed.",
              style: TextStyle(
                color: Color.grey[700],
                fontSize: 16,
              ),
            )
            const SizedBox(height: 50),

            // Username verified
            my_textField(),
            const SizedBox(height: 50),


            //password textified 
            my_textField(), 
        
            // forgot password 
        
            // signin button
        
            //or continue with
        
            // gooogle or apple sign in button 
        
            // not a member ? register
        
          ],
        ),
      ),
    )
  }
}
