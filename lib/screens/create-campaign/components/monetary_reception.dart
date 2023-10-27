import 'package:flutter/material.dart';

class MonetaryReception extends StatefulWidget {
  const MonetaryReception({super.key});

  @override
  State<MonetaryReception> createState() => _MonetaryReceptionState();
}

class _MonetaryReceptionState extends State<MonetaryReception> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          "Recepción de donaciones monetarias",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
          ),
          textAlign: TextAlign.left,
        ),
        const Text("Cuentas bancarias"),
        const Padding(padding: EdgeInsets.only(bottom: 10.0)),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(244, 247, 251, 255),
            hintText: 'Número de teléfono',
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Personaliza el radio del borde
              borderSide: const BorderSide(
                color: Colors.grey, // Color del borde
                width: 1.0, // Ancho del borde
              ),
            ),
          ),
          keyboardType: TextInputType.phone,
        ),
        const Padding(padding: EdgeInsets.only(bottom: 10.0)),
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black, // Color del borde
                  width: 2.0, // Ancho del borde
                ),
              ),
              child: ClipOval(
                child: Material(
                  color: Colors.white, // Button color
                  child: InkWell(
                    splashColor: Colors.grey[350], // Splash color
                    onTap: () {},
                    child: const SizedBox(
                        width: 30, height: 30, child: Icon(Icons.add)),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'Agregar cuenta bancaria',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        )
      ],
    );
  }
}
