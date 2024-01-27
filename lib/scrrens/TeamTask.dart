import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/collaborativeTile.dart';

class TeamTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
            TeamTaskTile(),
          ],
        ),
      ),
    );
  }
}
