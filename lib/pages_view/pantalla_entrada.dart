import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_categorias.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_listado.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_proveedores.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_salida.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_scan.dart';

class Page_input extends StatefulWidget {
  const Page_input({super.key});

  @override
  State<Page_input> createState() => _Page_inputState();
}


class _Page_inputState extends State<Page_input> {
  TextEditingController provider = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController category = new TextEditingController();
  //TextEditingController price = new TextEditingController();
  TextEditingController description = new TextEditingController();
  TextEditingController cantidad = new TextEditingController();
  //TextEditingController image = new TextEditingController();
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
              Container(
                width: 600,
              ),
              Container(
                child: Text('lola'),
              )
              
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
                  Text(
                    '',
                  ),
                  Image.asset(
                    '../images/LOGO.png',
                    width: 300,
                  ),
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
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Entrada de Prodcutos',
             style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(86, 84, 84, 0.984),
                ),
            ),
            TextField(
              controller: name,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Nombre del producto', icon: Icon(Icons.person)),
            ),TextField(
                controller: description,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Descripcion', icon: Icon(Icons.description)),
              ),
              TextField(
                controller: cantidad,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Cantidad Disponible', icon: Icon(Icons.image)),
              ),
              TextField(
                controller: category,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Categoria', icon: Icon(Icons.category)),
              ),           
          ],                        
        ),      
      ),    
    ); 
  }
}

