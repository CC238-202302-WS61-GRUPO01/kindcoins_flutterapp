import 'package:flutter/material.dart';

class SavedScreen extends StatefulWidget{
  const SavedScreen({Key? key}) : super(key: key);
  @override
  State<SavedScreen> createState() => _SavedScreen();
}

class _SavedScreen extends State<SavedScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Guardados'),
      ),
    );
  }
}