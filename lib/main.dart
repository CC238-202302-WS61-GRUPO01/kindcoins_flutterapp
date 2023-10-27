import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/login/login_screen.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/create_campaign_8.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "KindCoins",
      home: LoginScreen(),
      //home: CampaignPreview(),
    );
  }
}
