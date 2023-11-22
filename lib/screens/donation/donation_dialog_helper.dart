import 'package:flutter/material.dart';

class DialogHelper {
  static void showDonationDialog(BuildContext context) {
    TextEditingController amountController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Donar a la Campaña'),
              content: Column(
                children: [
                  Text('Ingrese la cantidad que desea donar:'),
                  SizedBox(height: 10),
                  TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Cantidad',
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Cierra el cuadro de diálogo
                  },
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validar que la cantidad sea un número mayor a cero
                    String amountText = amountController.text.trim();
                    if (double.tryParse(amountText) != null && double.parse(amountText) > 0) {
                      // Procesar la donación y mostrar el diálogo de éxito
                      Navigator.of(context).pop(); // Cierra el cuadro de diálogo actual
                      _showSuccessDialog(context);
                    } else {
                      // Mostrar un mensaje de error si la cantidad no es válida
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Ingrese una cantidad válida mayor a cero.'),
                        ),
                      );
                    }
                  },
                  child: Text('Donar'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0597A6),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  static void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Donación Realizada'),
          content: Text('¡Gracias por tu donación! ¿Qué te gustaría hacer ahora?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo actual
                // Navegar a la pantalla de perfil
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Text('Ir a Perfil'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo actual
                // Puedes agregar lógica adicional para seguir donando o realizar otra acción
              },
              child: Text('Seguir Donando'),
            ),
          ],
        );
      },
    );
  }
}