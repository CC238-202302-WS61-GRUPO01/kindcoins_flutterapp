import 'dart:convert';
import 'package:http/http.dart' as http;
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
        .get(Uri.parse('http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }
  Future<SubscriptionPlan> fetchPlanfromUser(int userId) async{
    final response = await http
        .get(Uri.parse('http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/users/$userId')
    );
    if (response.statusCode == 200) {
      User user = User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      int planId = user.subscriptionPlanId - 1;
      return fetchPlan(planId);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }


  Future<SubscriptionPlan> fetchPlan(int id) async {
    final response = await http
        .get(Uri.parse(
        'http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/suscriptionplans'
    ));

    if (response.statusCode == 200) {
      return SubscriptionPlan.fromJson(jsonDecode(response.body)[id] as Map<String, dynamic>);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }

  Future postData() async{
    http.post(
      Uri.parse('http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/suscriptionplans'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'plan': 'Free',
      }),
    );
    http.post(
      Uri.parse('http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/suscriptionplans'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'plan': 'Premium',
      }),
    );
    http.post(
      Uri.parse('http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "firstName": "Andrea",
        "lastName": "Alfaro",
        "dni": "76942955",
        "phone": "997806654",
        "email": "andrea@gmail.com",
        "password": "andrea1234",
        "photo": "https://i.pinimg.com/564x/60/5e/46/605e461ca634e868085d1a3d9d02b1ea.jpg",
        "suscriptionPlanId": 1
      }),
    );
  }
}