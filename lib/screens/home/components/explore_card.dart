import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final Map<String, dynamic> cardData;

  ExploreCard(this.cardData);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            cardData['imageURL'] ?? '',
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              cardData['title'] ?? '',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              cardData['description'] ?? '',
              style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.normal),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            //mantener el botón abajo
            child: ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0597A6),
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text('Detalles'),

              //bottom: 0,
            ),
          ),
        ],
      ),
    );
  }
}