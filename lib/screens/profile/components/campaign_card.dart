import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';

class CampaignCard extends StatelessWidget {
  final Campaign campaign;
  final String title;
  final String description;
  final String imagePath;

  CampaignCard({
    required this.campaign,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    // Trunca la descripción a 100 caracteres y agrega tres puntos si es necesario
    String truncatedDescription = campaign.description.length > 100
        ? campaign.description.substring(0, 100) + '...'
        : campaign.description;

    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            campaign.headerPhoto,
            width: double.infinity,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  campaign.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  truncatedDescription,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


