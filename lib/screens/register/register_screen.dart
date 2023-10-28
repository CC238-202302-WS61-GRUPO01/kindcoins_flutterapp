import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/home/home_screen.dart';

class RegistroScreen extends StatefulWidget {
  @override
  _RegistroBState createState() => _RegistroBState();
}

class _RegistroBState extends State<RegistroScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String genderValue = 'No determinado';

  DateTime selectedDate = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2015)
    );
  }
  bool _checkControllers(){
    if(nameController.text.isEmpty ||
        phoneController.text.isEmpty ||
        emailController.text.isEmpty ||
        birthdayController.text.isEmpty ||
        addressController.text.isEmpty ||
        genderValue.isEmpty
    ){
      return true;
    }
    if(phoneController.text.length!=15 ||
        !emailController.text.contains("@") ||
        !emailController.text.contains(".com")
    ){
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 151, 166),
          title: const Text("Registro"),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(25),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Text("Nombre"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su nombre',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 5, 151, 166)), // Color del borde al recibir foco
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Número de celular"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su celular',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 5, 151, 166)), // Color del borde al recibir foco
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Correo Electrónico"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su correo electrónico',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 5, 151, 166)), // Color del borde al recibir foco
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Fecha de nacimiento ${selectedDate}"),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        child: Text("Elija la fecha"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 5, 151, 166),
                        ),
                      onPressed: () async {
                        final DateTime? dateTime = await showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2050),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: Color.fromARGB(255, 5, 151, 166),
                                colorScheme: ColorScheme.light(primary: Color.fromARGB(255, 5, 151, 166)),
                                buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (dateTime != null) {
                          setState(() {
                            selectedDate = dateTime;
                          });
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Género"),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButton<String>(
                      value: genderValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          genderValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                            value: 'No binario', child: Text('No binario')),
                        DropdownMenuItem(
                            value: 'Masculino', child: Text('Masculino')),
                        DropdownMenuItem(
                            value: 'Femenino', child: Text('Femenino')),
                        DropdownMenuItem(
                            value: 'No determinado', child: Text('No determinado'))
                      ],
                    ),
                    //Espacio extra
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Dirección"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: addressController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su dirección',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 5, 151, 166)), // Color del borde al recibir foco
                        ),
                      ),
                    ),
                    //Espacio extra
                    const SizedBox(
                      height: 40,
                    ),
                    //Espacio extra
                    ElevatedButton(
                      onPressed: () {
                        if (_checkControllers()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                      },
                      child: const Text('Registrar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 5, 151, 166),
                      ),
                    ),
                  ],
                ))));
  }
}