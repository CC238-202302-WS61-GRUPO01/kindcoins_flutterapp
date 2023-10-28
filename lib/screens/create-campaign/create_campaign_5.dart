import 'package:flutter/material.dart';
import 'create_campaign_6.dart';



class PaymentOptions extends StatefulWidget {
  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

List<String> options=['Visa','Yape','Plin'];

class _PaymentOptionsState extends State<PaymentOptions> {
  String currentOpt=options[0];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Selecciona tu método de pago"),
      content: Scaffold(
        body: Column(
          children: <Widget>[
            Text("Revisa el detalle del monto antes de pagar"),
            ListTile(
              title: Image(
                image: AssetImage("assets/images/create_campaign/Visa.png"),
                height: 15.0,
                width: 20.0,
              ),
              leading: Radio(
                value: options[0],
                groupValue: currentOpt,
                onChanged: (value){
                  setState(() {
                    currentOpt=value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Image(
                image: AssetImage("assets/images/create_campaign/Yape.png"),
                height: 15.0,
                width: 15.0,
              ),
              leading: Radio(
                value: options[1],
                groupValue: currentOpt,
                onChanged: (value){
                  setState(() {
                    currentOpt=value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Image(
                image: AssetImage("assets/images/create_campaign/Plin.png"),
                height: 15.0,
                width: 15.0,
              ),
              leading: Radio(
                value: options[2],
                groupValue: currentOpt,
                onChanged: (value){
                  setState(() {
                    currentOpt=value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        MaterialButton(
            child: Text("Continuar"),
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (_)=>CardForm()
              );
            }
        )
      ],
    );
  }
}