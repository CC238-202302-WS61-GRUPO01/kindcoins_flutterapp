import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';
import 'package:kindcoins_flutterapp/screens/donation/see_campaign_to_donate.dart';

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
    String truncatedDescription = campaign.description.length > 100
        ? campaign.description.substring(0, 100) + '...'
        : campaign.description;

    return GestureDetector(
      onTap: () {
        // Navegar a la pantalla de detalles de la campaña cuando se presiona la tarjeta
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CampaignDetailsScreen(campaign: campaign),
          ),
        );
      },
      child: Card(
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
      ),
    );
  }
}
