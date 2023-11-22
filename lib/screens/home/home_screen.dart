import 'package:flutter/material.dart';
import '../../models/campaign_model.dart';
import '../../services/api_service.dart';
import '../home/components/explore_card.dart';
import '../home/components/explore_carrousel.dart';
import '../home/components/header.dart';
import '../home/components/trend_carrousel.dart';
import '../home/components/side_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> explorarItems = [
    {
      'imageURL':
      'https://media.istockphoto.com/id/115071061/es/foto/ni%C3%B1o-de-asia-en-laos.jpg?s=612x612&w=is&k=20&c=9YI3pRREapPsZxUkN5Y4bJ0DsfcS_s415TxEFRTUdcM=',
      'title': 'Alimenta familias',
      'description':
      'Las comidas compartidas proporcionarán a las familias afectadas por la guerra un apoyo en efectivo para que puedan comprar alimentos en tiendas locales.',
    },
    {
      'imageURL':
      'https://media.istockphoto.com/id/1599017115/es/foto/ayuda-de-agua-potable-para-residentes-afectados-por-la-sequ%C3%ADa-en-indonesia.jpg?s=612x612&w=is&k=20&c=jNV3cbZ5tGL_O1qCEEw1zJOyxBoM8fVAppOd73zvE-Q=',
      'title': 'Agua potable',
      'description':
      'Las donaciones proporcionarán apoyo a los afectados por la sequias.',
    },
    {
      'imageURL':
      'https://media.istockphoto.com/id/185096067/es/foto/oscuridad-hospital-habitaci%C3%B3n.jpg?s=612x612&w=is&k=20&c=SHaBVZMEqKnPRf7QDXsc-sTe03cU-T4UAv0QfLeZjYk=',
      'title': 'Equipo médico para hospitales',
      'description':
      'Las donaciones proporcionarán apoyo a los hospitales para que puedan comprar equipos médicos actuales y plenamente funcionales.',
    }
  ];

  final List<Map<String, dynamic>> items = [
    {
      'imageURL': 'assets/images/home_images/hospital.png',
      'title': 'Campaña de donación de sangre',
      'description': 'Ayuda a salvar vidas donando sangre',
    },
    {
      'imageURL': 'assets/images/home_images/puppys.png',
      'title': 'Ayuda a los animales',
      'description': 'Las donaciones ayudarán a los animales sin hogar',
    }, /*
    {
      'imageURL':
          'https://images.unsplash.com/photo-1635444943310-9a0f6c3f0b8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      'title': 'Los mejores consejos para ahorrar',
      'description': 'Mejora tus finanzas personales con estos tips',
    },*/
  ];

  late List<Future<Campaign>> explorigCampaigns;
  late List<Future<Campaign>> trendCampaigns;

  @override
  void initState() {
    super.initState();
    explorigCampaigns = [];
    trendCampaigns = [];
    ApiService campaignService;
    campaignService = ApiService(
        'https://kindcoins-api.azurewebsites.net/api/v1/campaigns'
    );
    explorigCampaigns.add(campaignService.fetchCampaign(2));
    explorigCampaigns.add(campaignService.fetchCampaign(5));
    explorigCampaigns.add(campaignService.fetchCampaign(4));

    trendCampaigns.add(campaignService.fetchCampaign(3));
    trendCampaigns.add(campaignService.fetchCampaign(6));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      drawer: SideNavBar(),
      backgroundColor: const Color(0xFFEBFFFD),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: const BoxDecoration(
              color: Color(0xFFEBFFFD),
            ),
            child: const Text(
              'Tendencia',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          TrendCarrousel(trendCampaigns),
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            width: double.infinity,
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: const BoxDecoration(
              color: Color(0xFFEBFFFD),
            ),
            child: const Text(
              'Explorar',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ExploreCarrousel(
            explorigCampaigns.map((item) => ExploreCard(item)).toList(),
          ),
        ],
      ),
    );
  }
}