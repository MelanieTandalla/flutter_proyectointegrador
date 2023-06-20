// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/pantalla_login.dart';



class pantalla_menu extends StatefulWidget {
  const pantalla_menu({super.key});

  @override
  State<pantalla_menu> createState() => _pantalla_menuState();
}

class _pantalla_menuState extends State<pantalla_menu> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Image.asset('../assets/logo_menu.png',width: 100,),
                Text("mkp.aguirre@yavirac.edu.ec")
              ],
            ),
            

            decoration: BoxDecoration(color: Color.fromARGB(255, 222, 243, 33)
            ),
            ),
            
            ListTile(
              leading: Icon(Icons.perm_identity_outlined),
              title: Text('Iniciar Sesion'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Pantalla_login()));
              },
            ),
             ListTile(
              leading: Icon(Icons.facebook),
              title: Text('facebook'),
          
            ),
            ListTile(
              leading: Icon(Icons.snapchat),
              title: Text('snapchat'),
             
            ),
          ],
        ),
      ),
    );
  }


}