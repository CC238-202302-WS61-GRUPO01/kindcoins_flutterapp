import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    image: AssetImage("lib/images.png"),
                    width: 80.0,
                    fit: BoxFit.fitHeight,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:8.0),
                  ),
                  Text(
                    "Nombre de usuario",
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
            //onTap: (){},
          ),
          Padding(
            padding: EdgeInsets.only(top:16.0),
          ),
          ListTile(
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
            //onTap: (){},
          ),
          Padding(
            padding: EdgeInsets.only(top:16.0),
          ),
          ListTile(
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
            //onTap: (){},
          ),
          Padding(
            padding: EdgeInsets.only(top:24.0),
          ),
          ListTile(
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
            //onTap: (){},
          )
        ],
      ),
    );
  }
}