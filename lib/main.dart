// ignore_for_file: prefer_const_constructors, duplicate_ignore
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
// ignore: unused_import
import 'package:proyecto_integrador_flutter/pantalla_inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});

  final _routes = {
    /*'/dashboard': (context) => const (),
    '/login': (context) => const LoginPage(),
    '/menu': (context) => const MenuPage(),
    '/registrar': (context) => const RegistrarPage(),
    '/detalle': (context) => const DetalleCelularPage(),*/
  };
  
  @override
  Widget build(BuildContext context) {
  
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/home',

      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Pantalla_login(),
        );
      },
    );
}
}