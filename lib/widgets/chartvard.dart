import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Add a border
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Progress',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            height: 200.0, // Set the desired height for the chart
            child: SfCircularChart(
              backgroundColor: Colors.white,
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
                ),
              ],
            ),
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
