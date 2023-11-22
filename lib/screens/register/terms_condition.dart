import 'package:flutter/material.dart';

class TermsAndConditionsDialog extends StatelessWidget {
  const TermsAndConditionsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Términos y condiciones',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Al aceptar los términos y condiciones, aceptas los siguientes términos:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '* No usarás la aplicación para fines ilegales.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
              Text(
                '* No publicarás contenido que sea dañino o ofensivo.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '* Respetarás a los demás usuarios.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Si no aceptas los términos y condiciones, no podrás registrarte.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Aceptar'),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
        TextButton(
          child: const Text('Rechazar'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
