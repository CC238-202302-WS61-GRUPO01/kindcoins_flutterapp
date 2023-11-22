import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';
import 'package:kindcoins_flutterapp/services/campaign_service.dart';
import 'package:kindcoins_flutterapp/screens/profile/components/campaign_card.dart';
import 'package:kindcoins_flutterapp/services/api_service.dart';

class AllCampaignsScreen extends StatelessWidget {
  int? userId = getUserId();

  AllCampaignsScreen({required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Todas las Campañas'),
      ),
      body: FutureBuilder<List<Campaign>>(
        future: CampaignService("https://kindcoins-api.azurewebsites.net/api/v1").fetchUserCampaigns(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error al cargar las campañas'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CampaignCard(
                  campaign: snapshot.data![index],
                  title: '',
                  description: '',
                  imagePath: '',
                );
              },
            );
          } else {
            return Center(child: Text('No se encontraron campañas'));
          }
        },
      ),
    );
  }
}