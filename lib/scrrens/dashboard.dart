import 'package:flutter/material.dart';
import 'package:task_managaer/scrrens/Tasks.dart';
import 'package:task_managaer/widgets/appbar.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {
int _selectedIndex = 0;

  final List<Widget> _pages = [
    Tasks(),
    // ProfilePage(),
    // SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:  _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
     currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'My Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Collaboration',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
       // Color when item is not selected
      ),
    );
  }


}
