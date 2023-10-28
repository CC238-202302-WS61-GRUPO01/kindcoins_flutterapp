import 'package:flutter/material.dart';
import 'side_nav_bar.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Color.fromARGB(255, 5, 151, 166),
      title: Text('Kind Coins'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Lógica del botón de búsqueda
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Lógica del botón de notificaciones
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}