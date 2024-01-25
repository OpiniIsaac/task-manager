import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/inputs.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                   
            Inputs(hintText: 'example@email.com', icons: Icon(Icons.email),label: 'Email',)
                  ],
                ),
          )),
    );
  }
}
