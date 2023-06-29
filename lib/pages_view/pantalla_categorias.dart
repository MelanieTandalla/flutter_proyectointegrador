import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/agregar_categoria.dart';
import 'package:proyecto_integrador_flutter/pages_editar/editar_categoria.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_entrada.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_listado.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_proveedores.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_salida.dart';


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
          Text('Categorias', style: TextStyle(
            fontSize: 40,
            color: Color.fromRGBO(86, 84, 84, 0.984),
          ),),

                 OutlinedButton(
  onPressed: () {
      Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>Agregar_categoria()));
  },
  child: Text("Añadir categoria"),
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
              title: Text('Electrodimesticos'),
              subtitle: Text('Lorem'),
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
                            builder: (context) => Editar_categoria()));
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
              title: Text('Electrodimesticos'),
              subtitle: Text('Lorem'),
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
                            builder: (context) => Editar_categoria()));
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
               title: Text('Electrodimesticos'),
              subtitle: Text('Lorem'),

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
                            builder: (context) => Editar_categoria()));
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
               title: Text('Electrodimesticos'),
              subtitle: Text('Lorem'),
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
                            builder: (context) => Editar_categoria()));
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
             title: Text('Electrodimesticos'),
              subtitle: Text('Lorem'),
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
                            builder: (context) => Editar_categoria()));
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
          content: const Text('¿Esta seguro que quiere eliminar esta categoria?'),
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
