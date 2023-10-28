import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/home/components/header.dart';

class SavedScreen extends StatefulWidget{
  const SavedScreen({Key? key}) : super(key: key);
  @override
  State<SavedScreen> createState() => _SavedScreen();
}

class _SavedScreen extends State<SavedScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: Header(),
    );
  }
}