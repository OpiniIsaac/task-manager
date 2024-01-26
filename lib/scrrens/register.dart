import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key});

  @override
  Widget build(BuildContext context) {
    const googleLogo = 'images/google.png';
    const appleLogo = 'images/apple.png';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "example",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "example@gmail.com",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter your password",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                    ),
                    onChanged: (password) {
                      // Hash the password using SHA-256
                      // String hashedPassword = sha256.convert(utf8.encode(password)).toString();
                      // print("Hashed Password: $hashedPassword");
                      // You can store or use the hashedPassword as needed
                    },
                  ),
                  SizedBox(height: 8.0),
                
                ],
              ),
              SizedBox(height: 24.0),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        // Add logic for creating an account
                        // This could navigate to a registration page or perform other actions
                        print("Create Account Button Pressed");
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Text("Or", style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 8.0),
              Text('Continue With',
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(googleLogo, height: 40.0),
                  SizedBox(width: 16.0), // Add space between logos
                  Image.asset(appleLogo, height: 40.0),
                ],
              ),
              SizedBox(height: 24.0),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?  ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Login here',
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to the signup page
                          Navigator.pushNamed(context, '/login');
                          // print("Create Account Link Clicked");
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
