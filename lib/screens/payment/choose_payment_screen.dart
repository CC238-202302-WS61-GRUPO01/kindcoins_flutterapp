import 'package:flutter/material.dart';
import 'add_payment_screen.dart';

class ChoosePaymentScreen extends StatefulWidget {
  @override
  _ChoosePaymentScreenState createState() => _ChoosePaymentScreenState();
}

class _ChoosePaymentScreenState extends State<ChoosePaymentScreen> {
  final List<String> metodosDePago = ["Tarjeta de crédito 1", "Tarjeta de crédito 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tus Métodos de Pago'),
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
      ),
      body: ListView.builder(
        itemCount: metodosDePago.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(metodosDePago[index]),
            // Puedes agregar más detalles o acciones aquí
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar a la pantalla para agregar un nuevo método de pago
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPaymentScreen()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
      ),
    );
  }
}