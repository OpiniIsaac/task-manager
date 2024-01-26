import 'dart:convert';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text("Welcome Back"),
              ),
              SizedBox(height: 16.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
                      ),
                    ),
                    SizedBox(height: 8.0),
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
                        // You carn store or use the hashedPassword as needed
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                      child: FilledButton(
                    child: Text(
                      'Create Account',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16)),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
