import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';


class Pantalla_categorias extends StatefulWidget {
  const Pantalla_categorias({super.key});

  @override
  State<Pantalla_categorias> createState() => categorias();
}

class categorias extends State<Pantalla_categorias> {
  TextEditingController provider = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController category = new TextEditingController();
  TextEditingController price = new TextEditingController();
  TextEditingController description = new TextEditingController();
  TextEditingController cantidad = new TextEditingController();
  TextEditingController image = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Image.asset('../images/LOGO.png'),
              
              TextField(
                controller: provider,
                decoration: InputDecoration(hintText: 'Proveedor',  icon:Icon(Icons.person)),
              ),
             
              TextField(
                controller: name,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Nombre', icon:Icon(Icons.person)),
              ),
             
             TextField(
                controller: category,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Nombre categoria', icon:Icon(Icons.person)),
              ),
             
              
              TextField(
                controller: price,
                obscureText: true,
                decoration: InputDecoration(hintText: 'precio', icon:Icon(Icons.numbers)),
              ),
              
              
              TextField(
                controller: description,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Descripcion', icon:Icon(Icons.numbers)),
              ),
             
              TextField(
                controller: image,
                obscureText: true,
                decoration: InputDecoration(hintText: 'imagen', icon:Icon(Icons.numbers)),
              ),
               
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                      child: Text("Guardar"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pantalla_login()));
                      },
                    ),
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