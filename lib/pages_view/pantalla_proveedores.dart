import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_a%C3%B1adir_provedor.dart';
import 'package:proyecto_integrador_flutter/pages_editar/editar_producto.dart';
import 'package:proyecto_integrador_flutter/pages_editar/editar_proveedor.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_productos.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_categorias.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_entrada.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_salida.dart';
class Page_providers extends StatefulWidget {
  const Page_providers({super.key});

  @override
  State<Page_providers> createState() => _Page_providersState();
}

class _Page_providersState extends State<Page_providers> {
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
        child: Column(
        children: <Widget>[
          Text('PROVEEDORES', style: TextStyle(
            fontSize: 40,
            color: Color.fromRGBO(86, 84, 84, 0.984),
          ),),
          OutlinedButton(
  onPressed: () {
      Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>agregar_provedor()));
  },
  child: Text("Añadir Proveedor"),
),
          Spacer(),
          ElevatedCardExample1(),
          ElevatedCardExample2(),
          ElevatedCardExample3(),
          ElevatedCardExample4(),
          ElevatedCardExample4(),
          Spacer(),
        ],
      ),
    ));
  }
}

class ElevatedCardExample1 extends StatelessWidget {
  const ElevatedCardExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text('Johan Pavon'),
              subtitle: Text('Direccion: Solanda'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Editar'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Editar_provedor()));
                  },
                ),
                Container(
                  child: const Dialog(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample2 extends StatelessWidget {
  const ElevatedCardExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text('Adonis Mendoza'),
              subtitle: Text('Direccion: Centro'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Editar'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Editar_provedor()));
                  },),
                const SizedBox(width: 8),
                Container(
                  child: const Dialog(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample3 extends StatelessWidget {
  const ElevatedCardExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text('Steveen Chizaiza'),
              subtitle: Text('Direccion: Caupicho'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Editar'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Editar_provedor()));
                  },),
                const SizedBox(width: 8),
                Container(
                  child: const Dialog(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample4 extends StatelessWidget {
  const ElevatedCardExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text('Melanie Tandalla'),
              subtitle: Text('Direccion: Centro'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Editar'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Editar_provedor()));
                  },),
                const SizedBox(width: 8),
                Container(
                  child: const Dialog(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.verified_user_outlined),
            title: Text('Sebastian Yanez'),
            subtitle: Text('Direccion: Valle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                  child: const Text('Editar'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Editar_producto()));
                  },),
              const SizedBox(width: 8),
              Container(
                  child: const Dialog(),
                )
            ],
          ),
        ],
      ),
    ),
  );
}


class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: const Text('¿Esta seguro que quiere eliminar este producto?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancelar', style: TextStyle(color: Color.fromRGBO(68, 68, 68, 1)),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Aceptar'),
              child: const Text('Aceptar', style: TextStyle(color: Color.fromRGBO(6, 67, 210, 1)),),
            ),
            
          ],
        ),
      ),
      child: const Text(
        'Eliminar',
        style: TextStyle(
          fontSize: 15.0,
          color: Color.fromRGBO(210, 6, 6, 1),
          fontFamily: 'cursive',
        ),
      ),
    );
  }
}
