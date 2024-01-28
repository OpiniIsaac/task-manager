import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          buildSettingItem(Icons.person, 'Profile'),
          buildSettingItem(Icons.notifications, 'Notifications'),
          buildSettingItem(Icons.security, 'Security'),
          // Add more setting items as needed
        ],
      ),
    );
  }

  Widget buildSettingItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: () {
        // Add functionality when the setting item is tapped
        // For example, navigate to a specific page or show a dialog
      },
    );
  }
}
