import 'package:flutter/material.dart';
import 'package:task_managaer/scrrens/PersonalTaskTab.dart';
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

class TeamTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Team Tasks Content'),
    );
  }
}
