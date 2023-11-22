import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/services/api_service.dart';
import 'components/campaign_card.dart';
import 'package:kindcoins_flutterapp/models/user_model.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';
import 'package:kindcoins_flutterapp/services/campaign_service.dart';
import 'package:kindcoins_flutterapp/screens/profile/all_campaigns_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ApiService apiService = new ApiService("");
    Future<User> profileUser = apiService.getProfile();
    int? userId = getUserId();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Perfil'),
      ),
      body: FutureBuilder<User>(
        future: profileUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error al cargar el perfil'));
          } else if (snapshot.hasData) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.network(
                          snapshot.data!.photo,
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(snapshot.data!.firstName + ' ' + snapshot.data!.lastName),
                      Text('Lima, Perú'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Mis Campañas',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FutureBuilder<List<Campaign>>(
                  future: CampaignService("https://kindcoins-api.azurewebsites.net/api/v1").fetchUserCampaigns(),
                  builder: (context, campaignSnapshot) {
                    if (campaignSnapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (campaignSnapshot.hasError) {
                      return Text('Error al cargar las campañas');
                    } else if (campaignSnapshot.hasData && campaignSnapshot.data!.isNotEmpty) {
                      return CampaignCard(
                        campaign: campaignSnapshot.data![0], // Muestra solo la primera campaña por ahora
                        title: '',
                        description: '',
                        imagePath: '',
                      );
                    } else {
                      return Text('No se encontraron campañas');
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllCampaignsScreen(userId: snapshot.data!.id),
                      ),
                    );
                  },
                  child: Text('Ver más campañas'),
                ),
              ],
            );
          } else {
            return Center(child: Text('No se encontraron datos'));
          }
        },
      ),
    );
  }
}
