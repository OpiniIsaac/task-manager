import 'package:flutter/material.dart';
import 'package:task_managaer/scrrens/Welcome.dart';
import 'package:task_managaer/scrrens/first.dart';
import 'package:task_managaer/scrrens/login.dart';
import 'package:task_managaer/scrrens/secondWelcome.dart';
import 'package:task_managaer/scrrens/third-onbarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: '/',
      routes: {
           '/':(context) => Welcome(),
        '/first':(context) => FirstWelcomeScreen(),
          '/second':(context) => SecondWelcome(),
            '/third':(context) => ThirdWelcome(),
             '/login':(context) => Login(),
              },
      // home: Login(),
    );
  }
}
