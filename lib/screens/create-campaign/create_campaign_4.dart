import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/plan_item.dart';
import 'create_campaign_5.dart';
import 'components/pago.dart';

class PlanSelection extends StatefulWidget {
  const PlanSelection({super.key});

  @override
  State<PlanSelection> createState() => _PlanSelectionState();
}

class _PlanSelectionState extends State<PlanSelection> {
  _mostrarDialogoPago(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Proceso de Pago Premium'),
          content: PasoPagoPremium(),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
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
                  _mostrarDialogoPago(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


