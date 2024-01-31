import 'package:flutter/material.dart';
import 'package:task_managaer/widgets/NotificationTile.dart';
import 'package:task_managaer/widgets/notificationappbart.dart';

class NoticationPage extends StatelessWidget {
  const NoticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:NotificationAppBar() ,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(children: [
            NotificationTile(),
            NotificationTile(),
            NotificationTile(),
            NotificationTile(),
            NotificationTile(),
            NotificationTile(),
            NotificationTile(),
            NotificationTile(),
          ]),
        ),
      ),
    );
  }
}
