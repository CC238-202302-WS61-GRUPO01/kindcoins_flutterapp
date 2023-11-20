import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/services/api_service.dart';
import 'components/campaign_card.dart';
import 'package:kindcoins_flutterapp/models/user_model.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  late Future<User> user;
  late Future<Campaign> campaign;

  int userId = 1;

  @override
  void initState() {
    super.initState();
    ApiService UserService;
    ApiService CampaignService;
    UserService = ApiService(
        'http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/users/$userId'
    );
    CampaignService=ApiService(
        'http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/campaigns/1'
    );

    user = UserService.fetchUser(userId);
    campaign=CampaignService.fetchCampaignFromUserId(userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        title: Text('Perfil'),
      ),
      body: FutureBuilder<User>(
        future: user,
        builder: (context,snapshot){
          if(snapshot.hasData){
            User? current=snapshot.data;
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(current!.photo),
                        radius: 50,
                      ),
                      SizedBox(height: 10),
                      Text(current.firstName + ' ' + current.lastName),
                      Text('Lima, Perú'),
                    ],
                  ),
                ),
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
            );
          }else{
            return ListView(
              children: [
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
            );;
          }
        }
      ),
    );
  }
}
