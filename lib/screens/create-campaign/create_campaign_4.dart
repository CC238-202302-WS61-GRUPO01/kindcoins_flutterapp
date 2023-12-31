import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/plan_item.dart';
import 'create_campaign_5.dart';
import '../payment/choose_payment_screen.dart';

class PlanSelection extends StatefulWidget {
  const PlanSelection({super.key});

  @override
  State<PlanSelection> createState() => _PlanSelectionState();
}

class _PlanSelectionState extends State<PlanSelection> {
  int selectedIndex = 0;
  _mostrarPantallaPago(BuildContext context, bool esGratis) {
    if (esGratis) {
      _goToPage5();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChoosePaymentScreen()),
    );
    }
  }
  void _goToPage5() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CampaignPreview(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Paso 4 de 5"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PlanItem(
              title: 'Premium mensual',
              content:
              '\u2022 Crear tu campaña y recibe donaciones\n\u2022 Duración ilimitada\n\u2022 Mayor visibilidad en nuestra sección de campañas\n\u2022 Prioridad en soporte',
              price: "\$ 9.99",
            ),
            const SizedBox(
              height: 15,
            ),
            PlanItem(
              title: 'Premium mensual',
              content:
              '\u2022 Crear tu campaña y recibe donaciones\n\u2022 Duración ilimitada\n\u2022 Mayor visibilidad en nuestra sección de campañas\n\u2022 Prioridad en soporte',
              price: "\$ 99.90",
            ),
            const SizedBox(
              height: 15,
            ),
            PlanItem(
              title: 'Premium mensual',
              content:
              '\u2022 Crear tu campaña y recibe donaciones\n\u2022 Duración de campaña máxima 1 mes',
              price: "Gratis",
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child: MaterialButton(
                color: const Color.fromARGB(252, 235, 208, 100),
                textColor: Colors.white,
                child: const Text("Siguiente"),
                onPressed: () {
                  String precio = "";
                  switch (selectedIndex) {
                    case 0:
                      precio = "\$ 9.99";
                      break;
                    case 1:
                      precio = "\$ 99.90";
                      break;
                    case 2:
                      precio = "Gratis";
                      break;
                    default:
                      break;
                  }
                  bool esGratis = precio.toLowerCase() == "gratis";
                  _mostrarPantallaPago(context, esGratis);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}