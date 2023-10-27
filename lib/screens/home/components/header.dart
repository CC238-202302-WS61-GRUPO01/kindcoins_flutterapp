import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('KindCoins'),
      leading: Icon(Icons.home),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Lógica del botón de búsqueda
          },
        ),
      ],
      automaticallyImplyLeading: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}