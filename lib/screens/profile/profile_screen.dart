import 'package:flutter/material.dart';
import 'components/campaign_card.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Perfil'),
      ),
      body: ListView(
        children: [
          // Sección de información del usuario
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile/cat-profile.jpg'),
                  radius: 50,
                ),
                SizedBox(height: 10),
                Text('Usuario prueba'),
                Text('Lima, Perú'),
              ],
            ),
          ),

          // Sección de medallas
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Medallas'),
                Row(
                  children: [
                    Image.asset('assets/images/profile/medalla-oro.png', height: 30, width: 30),
                    Text('Oro'),
                    // Agrega más medallas según sea necesario
                  ],
                ),
              ],
            ),
          ),

          // Sección de donaciones
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Donaciones Realizadas'),
                CampaignCard(
                  title: 'Alimenta familias en palestina',
                  description: 'Las comidas compartidas proporcionarán a las familias de Palestina un apoyo en efectivo para que puedan comprar alimentos en tiendas locales.',
                  imagePath: 'assets/images/profile/palestina-niña.png',
                ),
              ],
            ),
          ),

          // Sección de campañas propias
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Campañas Propias'),
                CampaignCard(
                  title: 'Ayuda a las ollas comunes',
                  description: 'Dona dinero o alimentos a las ollas comunes de San Juan de Lurigancho.',
                  imagePath: 'assets/images/profile/ollas-comunes-peru.jpg',
                ),
                // Agregar más campañas propias
              ],
            ),
          ),
        ],
      ),
    );
  }
}
