import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../create-campaign/create_campaign_1.dart';
import '../../saved/saved_screen.dart';
import '../../profile/profile_screen.dart';
import '../../premium/premium_screen.dart';
import '../../welcome/welcome_screen.dart';
import '../../post/post_screen.dart';
import '../../../services/api_service.dart';
import '../../../models/user_model.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    ApiService apiService = new ApiService("");
    Future<User> profileUser = apiService.getProfile();
    return Drawer(
      backgroundColor: Color.fromARGB(255, 235, 255, 253),//Color Secundario
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 151, 166)//Color Primario
              ),
              padding: EdgeInsets.all(8.0),
              child: FutureBuilder<User>(
                future: profileUser,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                    return Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.network(
                            snapshot.data!.photo,
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                        ),
                        Text(
                          "${snapshot.data!.firstName} ${snapshot.data!.lastName}",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black, // Negro 1
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
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
            leading: Icon(Icons.newspaper_outlined),
            title: Text(
              "Noticias",
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
                MaterialPageRoute(builder: (context) => PostScreen()),
              );
            }, //onTap: (){},
          ),
          Padding(
            padding: EdgeInsets.only(top:16.0),
          ),
          ListTile(
            leading: Icon(Icons.money_outlined),
            title: Text(
              "Pagos",
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
            padding: EdgeInsets.only(top:16.0),
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
          Padding(
            padding: EdgeInsets.only(top:16.0),
          ),
          ListTile(
            leading: Icon(Icons.arrow_back_outlined),
            title: Text(
              "Cerrar sesión",
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
                MaterialPageRoute(builder: (context) => WelcomeScreen()), // Reemplaza con la pantalla que desees
              );
            },
          ),
        ],
      ),
    );
  }
}
