import 'dart:convert';
//import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:kindcoins_flutterapp/models/campaign_model.dart';
import 'package:kindcoins_flutterapp/models/subscription_plan_model.dart';
import 'package:kindcoins_flutterapp/models/user_model.dart';

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  Future fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      //postData();
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }

  Future<User> fetchUser(int id) async {
    final response = await http
        .get(Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }
  Future<SubscriptionPlan> fetchPlanfromUser(int userId) async{
    final response = await http
        .get(Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/users/$userId')
    );
    if (response.statusCode == 200) {
      User user = User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      int planId = user.subscriptionPlanId - 1;
      return fetchPlan(planId);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }

  Future<Campaign> fetchCampaign(int id) async{
    final response = await http
        .get(Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/campaigns/$id'));

    if (response.statusCode == 200) {
      return Campaign.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }

  Future<Campaign> fetchCampaignFromUserId(int userId) async{
    final response = await http
        .get(Uri.parse('https://kindcoins-api.azurewebsites.net/api/v1/campaigns/$userId'));

    if (response.statusCode == 200) {
      Campaign campaign = Campaign.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      int campaignId = campaign.id;
      return fetchCampaign(campaignId);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }

  Future<SubscriptionPlan> fetchPlan(int id) async {
    final response = await http
        .get(Uri.parse(
        'https://kindcoins-api.azurewebsites.net/api/v1/suscriptionplans'
    ));

    if (response.statusCode == 200) {
      return SubscriptionPlan.fromJson(jsonDecode(response.body)[id] as Map<String, dynamic>);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }
}