import 'package:flutter/material.dart';

class NotificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // Handle back arrow button press
          Navigator.pushNamed(context, '/home');
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text('Notifications'),
          Spacer(),
        ],
      ),
      actions: [
        CircleAvatar(
          backgroundImage:
              AssetImage('assets/avatar.jpg'), // Replace with your avatar image
        ),
      ],
    );
  }
}
