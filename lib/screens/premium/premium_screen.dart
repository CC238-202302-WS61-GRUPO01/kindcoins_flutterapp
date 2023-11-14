import 'package:flutter/material.dart';
import 'package:kindcoins_flutterapp/models/subscription_plan_model.dart';
import 'package:kindcoins_flutterapp/models/user_model.dart';
import 'package:kindcoins_flutterapp/screens/home/components/header.dart';

import '../../services/api_service.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);
  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  late Future<User> user;
  late Future<SubscriptionPlan> plan;
  int userId = 1;

  @override
  void initState() {
    super.initState();
    ApiService UserService;
    ApiService PlanService;
    UserService = ApiService(
        'http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/users/$userId'
    );
    PlanService = ApiService(
        'http://kindcoins-api.eastus.cloudapp.azure.com/api/v1/suscriptionplans/1'
    );
    user = UserService.fetchUser(userId);

    plan = PlanService.fetchPlanfromUser(userId);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: Header(),
      body: Center(
        child: FutureBuilder<SubscriptionPlan>(
          future: plan,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var columna =
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tu plan es: ${snapshot.data!.plan}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                );

              if(snapshot.data!.plan == 'Free'){
                columna.children.add(//Ocultar este botón solo cuando no es premium
                    ElevatedButton(
                      onPressed: () {
                        // Aquí puedes manejar la transición a la pantalla de cambio a premium
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 5, 151, 166),
                        onPrimary: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cámbiate a Premium'),
                      ),
                    )
                );
              }

              return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: columna,
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
