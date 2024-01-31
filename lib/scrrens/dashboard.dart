import 'package:flutter/material.dart';
import 'package:task_managaer/scrrens/Home.dart';
import 'package:task_managaer/scrrens/Tasks.dart';
import 'package:task_managaer/scrrens/TeamTask.dart';
import 'package:task_managaer/scrrens/settingsPage.dart';
import 'package:task_managaer/widgets/appbar.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MyHomePage(),
    Tasks(),
    TeamTasksTab(),
    SettingPage(),
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
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 16.0,
            left: MediaQuery.of(context).size.width / 2 -
                28.0, // Adjust the position as needed
            child: FloatingActionButton(
              onPressed: () {
                // Add your action here
                Navigator.pushNamed(context, '/createtask');
              },
              backgroundColor: Colors.teal,
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.tealAccent,
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
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
