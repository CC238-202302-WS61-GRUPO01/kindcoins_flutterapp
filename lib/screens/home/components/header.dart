import 'package:flutter/material.dart';
import '../../notifications/notifications_screen.dart';
import 'search.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 5, 151, 166),
      title: Text('Kind Coins'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(), // Implementa tu propio CustomSearchDelegate
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Navigator.of(context).pop(); // Cierra el Drawer
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

