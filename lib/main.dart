import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/create_campaign_1.dart';
import 'package:kindcoins_flutterapp/screens/welcome/welcome_screen.dart';
import 'package:kindcoins_flutterapp/screens/create-campaign/components/campaign_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CampaignProvider(),
        ),
        // Otros providers si los tienes...
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KindCoins",
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
