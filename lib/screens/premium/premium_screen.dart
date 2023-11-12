import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/home/components/header.dart';

import '../../services/api_service.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {

  @override
  Widget build(BuildContext context) {

    ApiService apiService = ApiService(
        "http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/country");
    Future response = apiService.fetchData();

    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tu plan es: Free',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              //Ocultar este botón solo cuando no es premium
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes manejar la transición a la pantalla de cambio a premium
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 5, 151, 166),
                  onPrimary: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Cámbiate a Premium'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
