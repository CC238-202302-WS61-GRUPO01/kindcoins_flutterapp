import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class SuccessfulPublication extends StatefulWidget {
  const SuccessfulPublication({Key? key}) : super(key: key);

  @override
  State<SuccessfulPublication> createState() => _SuccessfulPublicationState();
}

class _SuccessfulPublicationState extends State<SuccessfulPublication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 5, 151, 166), // Color de fondo azul
        child: Center(
          child: Container(
            width: 390, // Ajusta el ancho según tus necesidades
            height: 600, // Ajusta la altura según tus necesidades
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white, // Color del rectángulo blanco
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Text(
                  'Publicación exitosa',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF22C55E),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text('Crear otra campaña',
                  style: TextStyle(
                    color: Colors.black,),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFDE59),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text('Ir a mis campañas'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 151, 166),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
