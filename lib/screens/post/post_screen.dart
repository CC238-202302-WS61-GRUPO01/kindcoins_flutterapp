import 'package:flutter/material.dart';
import '../home/components/header.dart';
class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController _postController = TextEditingController();
  List<String> posts = [
    "¡Hoy es un gran día!",
    "Compartiendo momentos felices...",
    "Nuevo post en Flutter",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _postController,
              decoration: InputDecoration(
                hintText: 'Escribe tu post...',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 151, 166)), // Cambia el color aquí
                ),
              ),
              cursorColor: Color.fromARGB(255, 5, 151, 166),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 5, 151, 166),
            ),
            onPressed: () {
              // Lógica para agregar un nuevo post
              setState(() {
                posts.add(_postController.text);
                _postController.clear();
              });
            },
            child: Text('Publicar'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(posts[index]),
                    // Agrega más información del post aquí (imagen, autor, etc.)
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}