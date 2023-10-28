import 'package:flutter/material.dart';
import '../create_campaign_5.dart';

class PasoPagoPremium extends StatefulWidget {
  const PasoPagoPremium({Key? key}) : super(key: key);
  @override
  State<PasoPagoPremium> createState() => _SeleccionMetodoPagoState();
}

class _SeleccionMetodoPagoState extends State<PasoPagoPremium> {
  @override
  Widget build(BuildContext context) {
    return PaymentOptions();
  }
}