// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:proyecto_integrador_flutter/pantalla_login.dart';

void main() {
  runApp(Pantalla_Inicio());
}

class Pantalla_Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pantalla_Inicio> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 8);
    return new Timer(duration, route);
    
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Pantalla_login()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 204, 114),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 209, 56, 189)),
                  Color.fromARGB(255, 125, 41, 182)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('../assets/logo_inicio2.png'),
                Text("BIENVENIDOS",style: TextStyle(fontSize: 50,),)
              
              ]
            ),
            
          )
        ],
      ),
    );
  }
}