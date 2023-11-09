import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_campaign_6.dart';


class CampaignPreview extends StatelessWidget {
  const CampaignPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: SideNavBar(),
      backgroundColor: Color.fromARGB(255, 235, 255, 253),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 151, 166),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Paso 5 de 5"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 16.0)),
          Text(
              "Vista previa",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                  textStyle:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  )
              )
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/create_campaign/Caridad-stock.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                      "Campaña título",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          textStyle:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black//Negro 1
                          )
                      )
                  ),
                  Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Color.fromARGB(255, 130, 130, 130),//Gris 3
                        ),
                        Padding(padding: EdgeInsets.only(left: 8.0)),
                        Expanded(
                          child: Text(
                              "meta de dinero",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  textStyle:TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 130, 130, 130),//Gris 3
                                  )
                              )
                          ),
                        ),
                        Expanded(
                            child: Text(
                                "0",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.roboto(
                                    textStyle:TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 130, 130, 130),//Gris 3
                                    )
                                )
                            )
                        ),
                        Padding(padding: EdgeInsets.only(left: 8.0)),
                        Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 130, 130, 130),//Gris 3
                        ),
                      ]
                  ),
                  Text(
                      "s/." + " dinero actual",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          textStyle:TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color.fromARGB(255, 130, 130, 130),//Gris 3
                          )
                      )
                  ),
                  Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 16.0)),
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.grey,
                            value: 0.3,//Va de 0 a 1. Donacion actual/meta
                            valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 48, 220, 122)),
                            borderRadius: BorderRadius.circular(2.0),
                            minHeight: 8.0,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 16.0)),
                        Text(
                            "30" + " %",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.roboto(
                                textStyle:TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 130, 130, 130),//Gris 3
                                )
                            )
                        ),
                        Padding(padding: EdgeInsets.only(left: 16.0)),
                      ]
                  ),
                ]
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 32.0, vertical: 0.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:8.0),
                ),
                Text(
                    "Resumen",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        textStyle:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,//Gris 3
                        )
                    )
                ),
                /*Padding(
                  padding: EdgeInsets.only(top:4.0),
                ),*/
                Container(
                  padding: EdgeInsets.all(16.0),
                  child:
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in nunc ac ligula molestie ultricies. Aliquam ut lectus justo. Sed porttitor cursus erat vitae egestas. Pellentesque lorem diam, sodales vel magna eget, suscipit lobortis metus. Quisque id fermentum magna, non volutpat turpis. Suspendisse potenti. Aenean cursus nibh at nisi viverra, vel finibus leo dapibus.",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.roboto(
                          textStyle:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,//negro 1
                          )
                      )
                  ),
                ),
                /*Padding(
                  padding: EdgeInsets.only(top:8.0),
                ),*/

                Container(
                  padding: EdgeInsets.all(8.0),
                  child:
                  Text(
                      "Donec sed consequat erat. Pellentesque gravida metus eros, aliquet lobortis nisi posuere non. Nam vehicula est in sem rutrum dictum. Donec commodo cursus ipsum, sit amet ultricies tortor euismod vel. Cras vel facilisis felis, ut vestibulum dolor. Cras vehicula mattis risus, viverra finibus quam egestas in. Nunc aliquet tincidunt elementum. Duis egestas enim venenatis tincidunt scelerisque. Nulla vel tempus magna. Suspendisse vel est ac enim varius tempus. Praesent accumsan mi libero, ac auctor nunc tempor sed. Proin bibendum posuere velit, non cursus enim finibus ut. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi condimentum auctor felis, a pretium arcu. Nam fermentum at mauris vitae viverra. Pellentesque laoreet porta quam sit amet sodales.",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.roboto(
                          textStyle:TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.black,//negro 1
                          )
                      )
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child:
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 5, 151, 166)
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessfulPublication(),
                    ),
                  );
                },
                child: Text(
                    'Publicar',
                    style: GoogleFonts.roboto(
                        textStyle:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,//blanco 1
                        )
                    )
                ),
              )
          )
        ],
      ),
    );
  }
}