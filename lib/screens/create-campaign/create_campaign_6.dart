import 'package:flutter/material.dart';
import 'create_campaign_7.dart';

class CardForm extends StatefulWidget {
  @override
  State<CardForm> createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final st1=theme.textTheme.displayMedium;
    final st2=theme.textTheme.displaySmall;
    return AlertDialog(
      title: Text("Pago", style: st1),
      content: Scaffold(
        body: Column(
          children: <Widget>[
            Text("Recuerda activar compras por Internet con tu banco", style: st2),
            Column(
              children: <Widget>[
                Form(child: Container(
                  padding: EdgeInsets.all(25.0),
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Número de tarjeta"
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                ),
                Row(
                  children: <Widget>[
                    Form(
                      child: Container(
                        padding: EdgeInsets.all(25.0),
                        width: 300,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "MM/AA"
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Form(
                      child: Container(
                        padding: EdgeInsets.all(25.0),
                        width: 300,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "CVV"
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Form(
                      child: Container(
                        padding: EdgeInsets.all(25.0),
                        width: 300,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Nombre"
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Form(
                      child: Container(
                        padding: EdgeInsets.all(25.0),
                        width: 300,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Apellido"
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Form(
                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Email"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      actions: [
        MaterialButton(
            child: Text("Pagar mi suscripción"),
            onPressed: (){
              showDialog(
                  context: context,
                  builder:(_)=>Confirmation());
            })],
    );
  }
}