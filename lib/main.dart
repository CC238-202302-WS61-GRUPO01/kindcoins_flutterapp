import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/create_campaign_1.dart';
import 'package:kindcoins_flutterapp/screens/welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "KindCoins",
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
