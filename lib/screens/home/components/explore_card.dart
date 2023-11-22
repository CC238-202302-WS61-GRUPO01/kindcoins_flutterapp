import 'package:flutter/material.dart';

import '../../../models/campaign_model.dart';

class ExploreCard extends StatelessWidget {
  final Future<Campaign> cardData;

  ExploreCard(this.cardData);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        children: [
          Flexible(
            child: Container(
              child: SingleChildScrollView(
                child: FutureBuilder<Campaign>(
                  future: cardData,
                  builder: (context, snapshot){
                    if (snapshot.hasData){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.network(
                            snapshot.data!.headerPhoto,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              snapshot.data!.name,
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              snapshot.data!.description,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      );
                    }
                    else
                    if(snapshot.hasError){
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0597A6),
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text('Detalles'),
            ),
          ),
        ],
      ),
    );
  }
}