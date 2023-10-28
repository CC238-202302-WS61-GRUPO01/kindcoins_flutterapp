import 'package:flutter/material.dart';
import '../home/components/explore_card.dart';
import '../home/components/explore_carrousel.dart';
import '../home/components/header.dart';
import '../home/components/trend_carrousel.dart';
import '../home/components/side_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> explorarItems = [
    {
      'imageURL': 'assets/images/create_campaign/girl_eat.jpg',
      'title': 'Título 2',
      'description':
      'Las comidas compartidas proporcionarán a las familias de Palestina un apoyo en efectivo para que puedan comprar alimentos en tiendas locales.',
    },
    {
      'imageURL': 'assets/images/create_campaign/guy_dessert.jpg',
      'title': 'Título 3',
      'description':
      'Las comidas compartidas proporcionarán a las familias de Palestina un apoyo en efectivo para que puedan comprar alimentos en tiendas locales.',
    }
  ];

  final List<Map<String, String>> items = [
    {
      'imageURL': 'assets/images/home_images/hospital.png',
      'title': 'Hospital San Carlos',
      'description': 'Gran campaña de donación',
    },
    {
      'imageURL':
      'https://images.unsplash.com/photo-1635444943310-9a0f6c3f0b8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      'title': 'Las mejores recetas para cocinar',
      'description': 'Aprende a preparar platos deliciosos y saludables',
    },
    {
      'imageURL':
      'https://images.unsplash.com/photo-1635444943310-9a0f6c3f0b8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      'title': 'Los mejores consejos para ahorrar',
      'description': 'Mejora tus finanzas personales con estos tips',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kind Coins')),
      drawer: SideNavBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Tendencia',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          TrendCarrousel(items),
          Container(
            margin: EdgeInsets.only(right: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Explorar',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          ExploreCarrousel(
            explorarItems.map((item) => ExploreCard(item)).toList(),
          ),
        ],
      ),
    );
  }
}