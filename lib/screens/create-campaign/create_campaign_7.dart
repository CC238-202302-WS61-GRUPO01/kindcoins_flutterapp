import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirmación"),
      content: Scaffold(
        body: Center(
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Text("Pago realizado con éxito")
            ],
          ),
        ),
      ),
    );
  }
}