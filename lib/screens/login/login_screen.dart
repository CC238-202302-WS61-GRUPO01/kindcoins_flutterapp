import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/register/validate_code_register.dart';
import 'package:kindcoins_flutterapp/screens/home/home_screen.dart';
import 'package:kindcoins_flutterapp/services/api_service.dart';
import 'package:kindcoins_flutterapp/services/user_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _ValidarFormWidgetState createState() => _ValidarFormWidgetState();
}

class _ValidarFormWidgetState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ApiService apiService = new ApiService("");
    apiService.fetchAllUsers();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: const Text("Iniciar Sesión"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 25),
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Obligatorio";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Correo Electrónico",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                  hintText: 'Ingresa tu correo electrónico',
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Obligatorio";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                  hintText: 'Ingresa tu contraseña',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  var isCorrect = await apiService.loginUser(
                      emailController.text, passwordController.text);

                  if (isCorrect) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Inicia Sesión'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 151, 166),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ValidateCodeRegisterScreen()),
                  );
                },
                child: Text(
                  'Registrate aquí',
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 151, 166),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
