import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/register/validate_code_screen.dart';

class ValidateCodeRegisterScreen extends StatefulWidget {
  @override
  _ValidateCodeState createState() => _ValidateCodeState();
}

class _ValidateCodeState extends State<ValidateCodeRegisterScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registro"),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(25),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Text("Número de celular"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su celular',
                      ),
                    ),
                    //Espacio extra
                    const SizedBox(
                      height: 40,
                    ),
                    //Espacio extra
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ValidarCodigoScreen()));
                        },
                        child: const Text('Enviar Código')),
                  ],
                ))));
  }
}