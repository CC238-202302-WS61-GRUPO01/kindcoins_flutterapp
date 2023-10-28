import 'package:flutter/material.dart';

class CampaignCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  CampaignCard({required this.title, required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(imagePath, height: 100, width: 100, fit: BoxFit.cover),
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
        ],
      ),
    );
  }
}
