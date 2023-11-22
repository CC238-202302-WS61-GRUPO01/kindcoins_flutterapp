import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kindcoins_flutterapp/services/api_service.dart';
import 'package:kindcoins_flutterapp/models/campaign_model.dart';
import 'package:kindcoins_flutterapp/models/campaign_request.dart';

class CampaignService {
  final String apiUrl;

  int? userId = getUserId();
  CampaignService(this.apiUrl);

  Future<List<Campaign>> fetchAllCampaigns() async {
    final response = await http.get(Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/campaigns'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<Campaign> campaigns = data.map((json) => Campaign.fromJson(json)).toList();
      return campaigns;
    } else {
      throw Exception('Error al cargar las campañas');
    }
  }

  Future<List<Campaign>> fetchUserCampaigns() async {
    final List<Campaign> allCampaigns = await fetchAllCampaigns();
    final userCampaigns = allCampaigns.where((campaign) => campaign.userId == userId).toList();
    return userCampaigns;
  }

  Future<Campaign> fetchSingleUserCampaign(int campaignId) async {
    final List<Campaign> userCampaigns = await fetchUserCampaigns();
    final singleCampaign = userCampaigns.firstWhere((campaign) => campaign.id == campaignId);
    return singleCampaign;
  }

  Future<Campaign> createCampaign(CampaignRequest campaign) async {
    print(campaign.toString());

    final response = await http.post(
        Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/campaigns'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(campaign));

    if (response.statusCode == 200) {
      final createdCampaign = Campaign.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      return createdCampaign;
    } else {
      throw Exception('Error al crear campaña');
    }
  }
}
