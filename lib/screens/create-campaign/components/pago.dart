import 'package:flutter/material.dart';
import '../create_campaign_5.dart';

// Clase para los pasos del pago premium
class PasoPagoPremium extends StatefulWidget {
  const PasoPagoPremium({Key? key}) : super(key: key);
  @override
  State<PasoPagoPremium> createState() => _PasoPagoPremiumState();
}

class _PasoPagoPremiumState extends State<PasoPagoPremium> {
  int _pasoActual = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_pasoActual == 1) _SeleccionMetodoPago(),
        if (_pasoActual == 2) _IngresoDatosMetodoPago(),
        if (_pasoActual == 3) _AvisoPago(),
      ],
    );
  }
}

class _SeleccionMetodoPago extends StatefulWidget {
  const _SeleccionMetodoPago({Key? key}) : super(key: key);

  @override
  State<_SeleccionMetodoPago> createState() => _SeleccionMetodoPagoState();
}

class _SeleccionMetodoPagoState extends State<_SeleccionMetodoPago> {
  @override
  Widget build(BuildContext context) {
    return PaymentOptions();
  }
}

// Widget para el segundo paso
class _IngresoDatosMetodoPago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Paso 2: Ingreso de Datos del Método de Pago'),
        // Agrega aquí los campos para ingresar los datos del método de pago
        // Puedes usar TextFormField u otros widgets de entrada de texto
      ],
    );
  }
}

// Widget para el tercer paso
class _AvisoPago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Paso 3: Aviso si el pago se realizó correctamente'),
        // Muestra un mensaje de éxito o fallo según el resultado del pago
      ],
    );
  }
}