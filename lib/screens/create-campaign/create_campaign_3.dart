import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/material_reception.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/monetary_reception.dart';

class ReceptionConfiguration extends StatefulWidget {
  const ReceptionConfiguration({super.key});

  @override
  State<ReceptionConfiguration> createState() => _ReceptionConfigurationState();
}

class _ReceptionConfigurationState extends State<ReceptionConfiguration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Paso 3 de 5"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: const MonetaryReception(),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(25.0),
              child: const MaterialReception(),
            ),
          ],
        ),
      ),
    );
  }
}
