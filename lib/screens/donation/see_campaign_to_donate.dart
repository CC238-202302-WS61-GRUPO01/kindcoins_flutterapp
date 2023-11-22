import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';

class CampaignDetailsScreen extends StatelessWidget {
  final Campaign campaign;

  CampaignDetailsScreen({required this.campaign});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Detalles de la Campaña'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                campaign.headerPhoto,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16.0),
              Text(
                campaign.name,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                campaign.slogan,
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Descripción:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                campaign.description,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Meta de Donación: \$${campaign.goal}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes manejar la lógica para la pantalla de donación
                  // Por ejemplo, podrías navegar a otra pantalla para realizar la donación.
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => DonationScreen()));
                },
                child: Text('Donar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0597A6),
                  minimumSize: Size(double.infinity, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
