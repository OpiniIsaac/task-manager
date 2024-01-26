import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    const googleLogo = 'images/google.png';
    const appleLogo = 'images/apple.png';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 48.0),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 36.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                          borderSide:
                              BorderSide(color: Colors.teal, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.teal, width: 2.0),
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
                    SizedBox(height: 16.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Enter your password",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.teal, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.teal, width: 2.0),
                        ),
                      ),
                      onChanged: (password) {
                        // Hash the password using SHA-256
                        // String hashedPassword = sha256.convert(utf8.encode(password)).toString();
                        // print("Hashed Password: $hashedPassword");
                        // You can store or use the hashedPassword as needed
                      },
                    ),
                    SizedBox(height: 16.0),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to forget password page
                          print("Forget Password Clicked");
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
                          Navigator.pushNamed(context, '/home');
                          // print("Create Account Button Pressed");
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
                SizedBox(height: 36.0),
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
                SizedBox(height: 36.0),
                RichText(
                  text: TextSpan(
                    text: 'New here? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Create an account',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate to the signup page
                            Navigator.pushNamed(context, '/signup');
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
