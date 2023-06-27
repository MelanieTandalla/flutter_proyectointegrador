import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_productos.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_entrada.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_proveedores.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_salida.dart';


class Pantalla_categorias extends StatefulWidget {
  const Pantalla_categorias({super.key});

  @override
  State<Pantalla_categorias> createState() => categorias();
}

class categorias extends State<Pantalla_categorias> {
  TextEditingController provider = new TextEditingController();
  TextEditingController proveedor = new TextEditingController();
  TextEditingController nombre = new TextEditingController();
  TextEditingController categoria = new TextEditingController();
  TextEditingController precio = new TextEditingController();
  TextEditingController descripcion = new TextEditingController();
  TextEditingController image = new TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 240, 236, 0.969),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 151, 151),
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
                  Text('Categorias', ),
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
                        builder: (context) => Pantalla_productos()));
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
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 190, 168),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 25.0,
                spreadRadius: 5.0,
                offset: Offset(15.0, 15.0))
          ],
        ),
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Categorias',
              style: TextStyle(
                fontSize: 30, 
                color: Color.fromRGBO(86, 84, 84, 0.984)
              ),),
                   

            TextField(
                controller: proveedor,
                obscureText: false,
                decoration: InputDecoration(hintText: 'Proveedor', icon:Icon(Icons.person)),
              ),
             
              
              TextField(
                controller: nombre,
                obscureText: false,
                decoration: InputDecoration(hintText: 'Nombre', icon:Icon(Icons.person_2)),
              ),
              
              
              TextField(
                controller: categoria,
                obscureText: false,
                decoration: InputDecoration(hintText: 'Nombre categoria', icon:Icon(Icons.description)),
              ),

              TextField(
                controller: precio,
                obscureText: false,
                decoration: InputDecoration(hintText: 'Precio', icon:Icon(Icons.image)),
              ),
             
              TextField(
                controller: descripcion,
                obscureText: false,
                decoration: InputDecoration(hintText: 'Descripcion', icon:Icon(Icons.category)),
              ),  

              TextField(
                controller: image,
                obscureText: false,
                decoration: InputDecoration(hintText: 'imagen', icon:Icon(Icons.image)),
              ),
               
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
