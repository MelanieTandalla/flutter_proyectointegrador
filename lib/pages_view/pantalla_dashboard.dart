import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_categorias.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_entrada.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_listado.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_proveedores.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_salida.dart';

class pantalla_menu extends StatefulWidget {
  const pantalla_menu({super.key});

  @override
  State<pantalla_menu> createState() => _pantalla_menuState();
}

class _pantalla_menuState extends State<pantalla_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 240, 236, 0.969),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 151, 151),
        title: Row(
          children: [
            Image.asset(
              '../images/LOGO.png',
              fit: BoxFit.contain,
              height: 50,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    '../images/LOGO.png',
                    width: 300,
                  ),
                  Text("")
                ],
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 246, 184, 113)),
            ),
            ListTile(
              leading: Icon(Icons.co_present_outlined),
              title: Text('Perfil'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page_profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.view_in_ar_sharp),
              title: Text('Productos'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pantalla_listado()));
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind_outlined),
              title: Text('Proveedores'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page_providers()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categorias'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pantalla_categorias()));
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_add),
              title: Text('Entrada de productos'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page_input()));
              },
            ),
            ListTile(
              leading: Icon(Icons.archive_sharp),
              title: Text('Salida de productos'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page_output()));
              },
            ),
            ListTile(
              leading: Icon(Icons.call_received_sharp),
              title: Text('Cerrar sesion'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pantalla_login()));
              },
            ),
          ],
        ),
      ),
      body:  Container(
          margin: EdgeInsets.only(top: 20, left: 150),
          child: Column(
            children: <Widget>[
              Text(
                'Bienvenidos A nuestro "Product Inventory"',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(216, 103, 103, 0.98),
                ),
              ),
              Container(
                child: Image.network('https://media.giphy.com/media/20NHiDnH41d9Ls6NlU/giphy.gif'),
              )])));
  }
}
