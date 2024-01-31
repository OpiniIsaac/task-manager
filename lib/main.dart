import 'package:flutter/material.dart';
import 'package:task_managaer/scrrens/Notification.dart';
import 'package:task_managaer/scrrens/Welcome.dart';
import 'package:task_managaer/scrrens/createTask.dart';
import 'package:task_managaer/scrrens/dashboard.dart';
import 'package:task_managaer/scrrens/first.dart';
import 'package:task_managaer/scrrens/login.dart';
import 'package:task_managaer/scrrens/register.dart';
import 'package:task_managaer/scrrens/secondWelcome.dart';
import 'package:task_managaer/scrrens/third-onbarding.dart';
import 'package:google_fonts/google_fonts.dart';
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
     textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // initialRoute: '/',
      routes: {
           '/':(context) => Welcome(),
        '/first':(context) => FirstWelcomeScreen(),
          '/second':(context) => SecondWelcome(),
            '/third':(context) => ThirdWelcome(),
             '/login':(context) => Login(),
             '/signup':(context) => Register(),
             '/home':(context) => Dashboard(),
             '/notification':(context) => NoticationPage(),
             '/createtask':(context) => CreateTaskPage()
              },
      // home: Login(),
    );
  }
}
