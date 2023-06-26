import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla.productos.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_categorias.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_proveedores.dart';
import 'package:proyecto_integrador_flutter/pages/pantalla_salida.dart';

class Page_input extends StatefulWidget {
  const Page_input({super.key});

  @override
  State<Page_input> createState() => _Page_inputState();
}

class _Page_inputState extends State<Page_input> {
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
                    context, MaterialPageRoute(builder: (context) =>Page_products()));
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
                      context, MaterialPageRoute(builder: (context) =>Page_categories()));
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