import 'package:flutter/material.dart';

class PremiumScreen extends StatefulWidget{
  const PremiumScreen({Key? key}) : super(key: key);
  @override
  State<PremiumScreen> createState() => _PremiumScreen();
}

class _PremiumScreen extends State<PremiumScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Premium'),
      ),
    );
  }
}