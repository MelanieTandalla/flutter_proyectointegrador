import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_categorias.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_entrada.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_listado.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_perfil.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_proveedores.dart';
import 'package:proyecto_integrador_flutter/pages_a%C3%B1adir/pantalla_salida.dart';


class Agregar_producto extends StatefulWidget {
  const Agregar_producto({super.key});

  @override
  State<Agregar_producto> createState() => _Agregar_productoState();
}

class _Agregar_productoState extends State<Agregar_producto> {
  final phoneNumberRegex = RegExp(r'^\d{3}\d{3}\d{4}$');
  final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$');
  final _formKey = GlobalKey<FormState>();
  late var obscureText = true;
  late String _producto, _precio, _descripcion, _cantidad, _categoria, _imagen;

  TextEditingController nombre = new TextEditingController();
  TextEditingController precio= new TextEditingController();
  TextEditingController descripcion = new TextEditingController();
  TextEditingController cantidad = new TextEditingController();
  TextEditingController categoria = new TextEditingController();
  TextEditingController imagen = new TextEditingController();

  String? gender;



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
        margin: EdgeInsets.only(top: 20, left: 45, right: 45, bottom: 40),
        padding: EdgeInsets.only(left: 60, right: 60),
        child: Form(
          key: _formKey,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../images/LOGO.png'),

              TextFormField(
                controller: nombre,
                maxLength: 25,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Nombre del producto';
                  }
                  return null;
                },
                onSaved: (value) => _producto = value!,
                decoration: InputDecoration(
                    hintText: 'Ingrese el nombre del producto',
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
              ),
              //Text('$selectedValue2'),
              
              
              TextFormField(
                controller: precio,
                maxLength: 4,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Ingres el precio del producto';
                  }
                  return null;
                },
                onSaved: (value) => _precio = value!,
                decoration: InputDecoration(
                    hintText: 'Ingrese el precio', icon: Icon(Icons.numbers)),
              ),




              
              TextFormField(
                controller: descripcion,
                maxLength: 25,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Ingrese la descripcion';
                  }
                  return null;
                },
                onSaved: (value) => _descripcion = value!,
                decoration: InputDecoration(
                    hintText: 'Ingrese la descripcion del producto', icon: Icon(Icons.description)),
              ),


              
              TextFormField(
                controller: cantidad,
                maxLength: 4,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Ingres la cantidad';
                  }
                  return null;
                },
                onSaved: (value) => _cantidad = value!,
                decoration: InputDecoration(
                    hintText: 'Ingrese la cantidad del producto', icon: Icon(Icons.numbers)),
              ),


TextFormField(
                controller: categoria,
                
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Categoria que pertenece';
                  }
                  return null;
                },
                onSaved: (value) => _categoria = value!,
                decoration: InputDecoration(
                    hintText: 'Ingrese la categeria', icon: Icon(Icons.numbers)),
              ),

TextFormField(
                controller: imagen,
                
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Ingres la imagen';
                  }
                  return null;
                },
                onSaved: (value) => _imagen = value!,
                decoration: InputDecoration(
                    hintText: 'Ingrese la imagen del producto', icon: Icon(Icons.imagesearch_roller)),
              ),


              

              Container(
                margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 37, 243, 33),
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                child: ElevatedButton(
                    child: const Dialog(                      
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(
                            'producto: $_producto,Precio: $_precio, Descripcion: $_descripcion, Cantidad: $_cantidad, Categoria: $_categoria, Imagen: $_imagen');
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: const Text('Producto agregado con exito!!'),
          actions: <Widget>[
            TextButton(
              onPressed: () =>Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pantalla_listado())),
              child: const Text('Aceptar', style: TextStyle(color: Color.fromRGBO(68, 68, 68, 1)),),
            ),
            
          ],
        ),
      ),
      child: const Text(
        'Agregar',
        style: TextStyle(
          fontSize: 15.0,
          color: Color.fromRGBO(210, 6, 6, 1),
          fontFamily: 'cursive',
        ),
      ),
    );
  }
}