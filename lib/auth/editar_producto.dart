import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/Editar_producto.dart';


class Editar_producto extends StatefulWidget {
  const Editar_producto({super.key});

  @override
  State<Editar_producto> createState() => productos();
}

class productos extends State<Editar_producto> {
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
                controller: category,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Actualizar', icon:Icon(Icons.person)),
              ),
             
              
              TextField(
                controller: price,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Precio', icon:Icon(Icons.numbers)),
              ),
              
              
              TextField(
                controller: description,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Descripcion', icon:Icon(Icons.numbers)),
              ),

              TextField(
                controller: image,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Canitdad Disponible', icon:Icon(Icons.image)),
              ),
             
              TextField(
                controller: image,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Categoria', icon:Icon(Icons.image)),
              ),

              TextField(
                controller: image,
                obscureText: true,
                decoration: InputDecoration(hintText: 'imagen', icon:Icon(Icons.image)),
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
                                builder: (context) => Editar_producto()));
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





