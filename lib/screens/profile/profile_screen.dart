import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/services/api_service.dart';
import 'components/campaign_card.dart';
import 'package:kindcoins_flutterapp/models/user_model.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ApiService apiService = new ApiService("");
    Future<User> profileUser = apiService.getProfile();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Perfil'),
      ),
      body: FutureBuilder<User>(
        future: profileUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Mientras está cargando
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Si hay un error
            return Center(child: Text('Error al cargar el perfil'));
          } else if (snapshot.hasData) {
            // Si hay datos
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    ClipOval(
                    child: Image.network(
                    snapshot.data!.photo,
                    width: 150.0, // Ajusta el tamaño según tus necesidades
                    height: 150.0, // Ajusta el tamaño según tus necesidades
                    fit: BoxFit.cover,
                    ),
                    ),
                      SizedBox(height: 10),
                      Text(snapshot.data!.firstName + ' ' + snapshot.data!.lastName),
                      Text('Lima, Perú'),
                    ],
                  ),
                )
              ],
            );
          } else {
            // En otros casos (puede ser nulo)
            return Center(child: Text('No se encontraron datos'));
          }
        },
      ),
    );
  }
}
