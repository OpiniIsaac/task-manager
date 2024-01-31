import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Progress'),
          SfCircularChart(
            backgroundColor: Colors.white,
            // dataLabelSettings: DataLabelSettings(isVisible: false), // Set isVisible to false
            series: <CircularSeries>[
              DoughnutSeries<Task, String>(
                dataSource: [
                  Task('Task 1', true),
                  Task('Task 2', true),
                  Task('Task 3', true),
                  Task('Task 4', false), // Uncompleted task
                ],
                xValueMapper: (Task task, _) => task.name,
                yValueMapper: (Task task, _) => task.completed ? 1 : 0,
                pointColorMapper: (Task task, _) =>
                    task.completed ? Colors.teal : Colors.grey[400],
                // Adjust doughnut width
                // innerRadius: 70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Task {
  final String name;
  final bool completed;

  Task(this.name, this.completed);
}
