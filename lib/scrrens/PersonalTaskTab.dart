
import 'package:task_managaer/widgets/tasktile.dart';
import 'package:flutter/material.dart';
class PersonalTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
          ],
        ),
      ),
    );
  }
}
