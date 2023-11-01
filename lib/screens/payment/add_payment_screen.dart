import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'choose_payment_screen.dart';
import '../create-campaign/create_campaign_5.dart';

class AddPaymentScreen extends StatefulWidget {
  @override
  _AddPaymentScreenState createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cvvCodeController = TextEditingController();

  void _agregarTarjeta(BuildContext context) {
    // Aquí deberías realizar la lógica para agregar la tarjeta
    // Puedes acceder a la información con los controladores

    // Mostrar un SnackBar indicando que la tarjeta se agregó correctamente
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Tarjeta agregada correctamente'),
      ),
    );

    // Navegar a otra pantalla
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CampaignPreview()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Tarjeta'),
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CreditCardWidget(
                cardNumber: cardNumberController.text,
                expiryDate: expiryDateController.text,
                cardHolderName: cardHolderNameController.text,
                cvvCode: cvvCodeController.text,
                showBackView: false,
                onCreditCardWidgetChange: (creditCardBrand) {
                  // Aquí puedes manejar los cambios en el widget
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: cardNumberController,
                decoration: InputDecoration(labelText: 'Número de tarjeta'),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              TextFormField(
                controller: expiryDateController,
                decoration: InputDecoration(labelText: 'Fecha de caducidad'),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              TextFormField(
                controller: cardHolderNameController,
                decoration: InputDecoration(labelText: 'Nombre en la tarjeta'),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              TextFormField(
                controller: cvvCodeController,
                decoration: InputDecoration(labelText: 'CVV'),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  _agregarTarjeta(context);
                },
                child: Text('Agregar Tarjeta'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 151, 166),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
