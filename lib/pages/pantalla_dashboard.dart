// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_perfil.dart';



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
            

            decoration: BoxDecoration(color: Color.fromARGB(255, 246, 184, 113)
            ),
            ),
            
            ListTile(
              leading: Icon(Icons.co_present_outlined ),
              title: Text('Perfil'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Page_profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_in_ar_sharp ),
              title: Text('Productos'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Pantalla_login()));
              },
            ),
             ListTile(
              leading: Icon(Icons.assignment_ind_outlined),
              title: Text('Proveedores'),
          
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categorias'),
             
            ),
            ListTile(
              leading: Icon(Icons.assignment_add ),
              title: Text('Entrada de productos'),
             
            ),
            ListTile(
              leading: Icon(Icons.archive_sharp),
              title: Text('Salida de productos'),
             
            ),
            ListTile(
              leading: Icon(Icons.call_received_sharp),
              title: Text('Cerrar sesion'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Pantalla_login()));
              },
             
            ),
          ],
        ),
      ),
    );
  }


}