import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/pantalla_inicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Pantalla_Inicio());
  }
}
