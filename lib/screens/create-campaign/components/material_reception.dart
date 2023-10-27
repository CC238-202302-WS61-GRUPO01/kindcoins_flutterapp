import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/create_campaign_4.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/dropdown_menu.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/google_map.dart';

class MaterialReception extends StatefulWidget {
  const MaterialReception({super.key});

  @override
  State<MaterialReception> createState() => _MaterialReceptionState();
}

class _MaterialReceptionState extends State<MaterialReception> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Recepción de donaciones materiales",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
          ),
          textAlign: TextAlign.left,
        ),
        Container(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.95),
                      color: const Color.fromARGB(244, 247, 251, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: const DropDownMenu(
                    items: ['a', 'b', 'c'],
                    selectedValue: 'a',
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.95),
                      color: const Color.fromARGB(244, 247, 251, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: const DropDownMenu(
                    items: ['g1', 'g2', 'g3'],
                    selectedValue: 'g3',
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.95),
                      color: const Color.fromARGB(244, 247, 251, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: const DropDownMenu(
                    items: ['1', '2', '3'],
                    selectedValue: '1',
                  ),
                ),
              ),
            ],
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(244, 247, 251, 255),
            hintText: 'Dirección',
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
          keyboardType: TextInputType.streetAddress,
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(244, 247, 251, 255),
            hintText: 'Referencia',
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
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 8),
        const Text(
          "Marque su ubicación actual",
          style: TextStyle(fontSize: 17.5),
        ),
        const SizedBox(height: 8),
        Container(
            height: 500,
            padding: const EdgeInsets.only(bottom: 10),
            child: const MyMap()),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: MaterialButton(
            color: const Color.fromARGB(252, 235, 208, 100),
            textColor: Colors.white,
            child: const Text("Siguiente"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PlanSelection()));
            },
          ),
        )
      ],
    );
  }
}
