import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_productos.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_categorias.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_entrada.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_salida.dart';

class Page_providers extends StatefulWidget {
  const Page_providers({super.key});

  @override
  State<Page_providers> createState() => _Page_providersState();
}

class _Page_providersState extends State<Page_providers> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color.fromARGB(255, 246, 133, 133),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('../images/LOGO.png',width: 300,),
                Text("")
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
                    context, MaterialPageRoute(builder: (context) =>Pantalla_productos()));
              },
            ),
             ListTile(
              leading: Icon(Icons.assignment_ind_outlined),
              title: Text('Proveedores'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Page_providers()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categorias'),
              onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>Pantalla_categorias()));
                },
            ),
            ListTile(
              leading: Icon(Icons.assignment_add ),
              title: Text('Entrada de productos'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Page_input()));
              },
            ),
            ListTile(
              leading: Icon(Icons.archive_sharp),
              title: Text('Salida de productos'),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>Page_output()));
              },
             
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
      body: Container(),
    );


}}