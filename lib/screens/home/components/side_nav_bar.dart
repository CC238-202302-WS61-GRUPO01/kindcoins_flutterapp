import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../create-campaign/create_campaign_1.dart';
import '../../saved/saved_screen.dart';
import '../../profile/profile_screen.dart';
import '../../premium/premium_screen.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(//Quitar el const más tarde
      backgroundColor: Color.fromARGB(255, 235, 255, 253),//Color Secundario
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 151, 166)//Color Primario
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/profile/cat-profile.jpg"),
                    width: 80.0,
                    fit: BoxFit.fitHeight,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:8.0),
                  ),
                  Text(
                    "Usuario prueba",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.roboto(
                        textStyle:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black//Negro 1
                        )
                    ),
                  ),
                ],
              )
          ),
          Padding(padding: EdgeInsets.only(top:16.0),),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text(
              "Perfil",
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              selectionColor: Colors.white,
              style: GoogleFonts.roboto(
                  textStyle:TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  )
              ),
            ),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            }, //onTap: (){},
          ),
          Padding(
            padding: EdgeInsets.only(top:16.0),
          ),
          ListTile(
            leading: Icon(Icons.money_outlined),
            title: Text(
              "Premium",
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              selectionColor: Colors.white,
              style: GoogleFonts.roboto(
                  textStyle:TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  )
              ),
            ),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PremiumScreen()),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top:16.0),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Guardados",
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              selectionColor: Colors.white,
              style: GoogleFonts.roboto(
                  textStyle:TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  )
              ),
            ),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedScreen()),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top:24.0),
          ),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text(
              "Crear campaña",
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              selectionColor: Colors.white,
              style: GoogleFonts.roboto(
                  textStyle:TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  )
              ),
            ),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CampaignCreationPage()), // Reemplaza con la pantalla que desees
              );
            },
          ),
        ],
      ),
    );
  }
}
