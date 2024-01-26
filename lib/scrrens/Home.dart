import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Graph'),
      ),
      body: Center(
        child: PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                color: Colors.teal,
                value: 40,
                title: 'Teal',
                radius: 100,
                titleStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              PieChartSectionData(
                color: Colors.tealAccent,
                value: 60,
                title: 'TealAccent',
                radius: 100,
                titleStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
            sectionsSpace: 0,
            centerSpaceRadius: 80,
          ),
        ),
      ),
    );
  }
}
