import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/home/components/header.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
      ),
      body: ListView.builder(
        itemCount: 5, // Número de notificaciones simuladas
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Notificación $index'),
            subtitle: Text('Descripción de la notificación $index'),
            // Puedes personalizar más la apariencia de las notificaciones aquí
          );
        },
      ),
    );
  }
}