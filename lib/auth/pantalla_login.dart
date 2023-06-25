// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:proyecto_integrador_flutter/pages/pantalla_dashboard.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_registro.dart';

class Pantalla_login extends StatefulWidget {
  const Pantalla_login({super.key});

  @override
  State<Pantalla_login> createState() => login();
}

class login extends State<Pantalla_login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 218, 217),
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
              Image.asset('../assets/logo2.png'),
              
              TextField(
                controller: email,
                decoration: InputDecoration(hintText: 'correo',  icon:Icon(Icons.email)),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(hintText: 'contraseña', icon:Icon(Icons.password)),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pantalla_menu()));
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿No tienes cuenta?"),
                  Container(
                    child: TextButton(
                      child: Text("Crear Cuenta"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pantalla_registro()));
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

