import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/chartvard.dart';
import 'package:task_managaer/widgets/homecard.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ChartCard(),
              HomeCard(),
            ],
          ),
        ),
      ),
    );
  }
}
