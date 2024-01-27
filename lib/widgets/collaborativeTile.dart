import 'package:flutter/material.dart';

class TeamTaskTile extends StatefulWidget {
  const TeamTaskTile({super.key});

  @override
  State<TeamTaskTile> createState() => _TeamTaskTileState();
}

class _TeamTaskTileState extends State<TeamTaskTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        // border: Border.all(color: Colors.grey[300]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Task',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      'Priority ',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Text(
                      'High',
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.teal, // Set plus icon color to teal
                ),
                SizedBox(height: 4.0), // Adjusted spacing
                Text(
                  'Add ',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  'Collaborator',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
