import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/appbar.dart';
import 'package:task_managaer/widgets/tasktile.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
      
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Personal Tasks'),
                Tab(text: 'Team Tasks'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  PersonalTasksTab(),
                  TeamTasksTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TaskTile()
    );
  }
}

class TeamTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Team Tasks Content'),
    );
  }
}
