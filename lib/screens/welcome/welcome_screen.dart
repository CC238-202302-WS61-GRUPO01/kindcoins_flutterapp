import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import '../register/validate_code_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import '../register/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 255, 253, 1.0),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen centrada
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/logo/kind_coins_logo.png', // Reemplaza con la ruta de tu imagen
                  width: 200,
                  height: 200,
                  // Puedes ajustar el tamaño según tus necesidades
                  fit: BoxFit.cover, // Ajusta para cubrir el círculo
                ),
              ),
            ),
            SizedBox(height: 20), // Espaciador vertical

            // Botón de Registro
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistroScreen()),
                );
              },
              child: Text('Registro'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 5, 151, 166),
              ),
            ),

            SizedBox(height: 10), // Espaciador vertical

            // Botón de Inicio de Sesión
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Iniciar Sesión',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 151, 166),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
