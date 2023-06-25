// ignore_for_file: prefer_const_constructors, unnecessary_new, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/auth/pantalla_login.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class pantalla_registro extends StatefulWidget {
  const pantalla_registro({super.key});

  @override
  State<pantalla_registro> createState() => _pantalla_registroState();
}

class _pantalla_registroState extends State<pantalla_registro> {
  final phoneNumberRegex = RegExp(r'^\d{3}\d{3}\d{4}$');
  final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$');
  final _formKey = GlobalKey<FormState>();
  late var obscureText = true;
  late String _username,
      _direccion,
      _email,
      _password,
      _cedula,
      _telefono,
      // ignore: unused_field
      _password2;

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController password2 = new TextEditingController();
  TextEditingController nombre = new TextEditingController();
  TextEditingController cedula = new TextEditingController();
  TextEditingController telefono = new TextEditingController();
  TextEditingController direccion = new TextEditingController();
  TextEditingController apellido = new TextEditingController();
  TextEditingController genero = new TextEditingController();
  TextEditingController estado_civil = new TextEditingController();
  String? gender;

  final List<String> items = [
    'Soltero',
    'Casado',
    'Divorciado',
  ];
  String? selectedValue;

  final List<String> tipodocumento = [
    'Cedula',
    'RUC',
    'Pasaporte',
  ];
  String? selectedValue2;

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
        child: Form(
          key: _formKey,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('./assets/images/logo2.png'),
              TextFormField(
                controller: nombre,
                maxLength: 25,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Nombre de usuario requerido';
                  }
                  return null;
                },
                onSaved: (value) => _username = value!,
                decoration: InputDecoration(
                    hintText: 'Nombre Completo', icon: Icon(Icons.person)),
              ),
              TextFormField(
                controller: apellido,
                maxLength: 25,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Apellido de usuario requerido';
                  }
                  return null;
                },
                onSaved: (value) => _username = value!,
                decoration: InputDecoration(
                    hintText: 'Apellido Completo', icon: Icon(Icons.person)),
              ),
              Divider(),
              Text(
                'Genero',
                style: TextStyle(fontSize: 15),
              ),
              Row(children: <Widget>[
                
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Hombre'),
                    value: 'hombre',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                ),
                
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Mujer'),
                    value: 'mujer',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                )

              ]),
              Divider(),
              Text('Estado Civil'),
              Column(
                children: [

                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        'Seleccionar',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },

                    ),
                  ),
                ],
              ),
              Divider(),
              Text('Tipo de documento'),
              Column(
                children: [
                  
                  DropdownButtonHideUnderline(
                    
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Text(
                        'Seleccionar',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: tipodocumento
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue2,
                      onChanged: (value) {
                        setState(() {
                          selectedValue2 = value as String;
                        });
                      },
                    ),
                  ),
                ],
              ),
              
              //Text('$selectedValue2'),
              TextFormField(
                controller: cedula,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Numero de documento requerido';
                  }
                  return null;
                },
                onSaved: (value) => _cedula = value!,
                decoration: InputDecoration(
                    hintText: '$selectedValue2',
                    icon: Icon(Icons.card_membership)),
              ),
              Divider(),
              TextFormField(
                controller: direccion,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Nombre de direccion requerido';
                  }
                  return null;
                },
                onSaved: (value) => _direccion = value!,
                decoration: InputDecoration(
                    hintText: 'Direccion', icon: Icon(Icons.map)),
              ),
              TextFormField(
                controller: telefono,
                maxLength: 10,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Numero de telefono requerido';
                  }
                  if (!phoneNumberRegex.hasMatch(value!)) {
                    return 'Ingrese un número de teléfono válido';
                  }
                  return null;
                },
                onSaved: (value) => _telefono = value!,
                decoration: InputDecoration(
                    hintText: 'Telefono', icon: Icon(Icons.phone)),
              ),
              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Por favor ingrese un email';
                  }
                  if (!emailRegex.hasMatch(value!)) {
                    return 'Por favor ingrese un email válido';
                  }
                  return null;
                },
                onSaved: (value) => _email = value!,
                decoration: InputDecoration(
                    hintText: 'correo', icon: Icon(Icons.email)),
              ),
              /* SizedBox(
                height: 50,
              ), */
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                onChanged: (value) {
                  _password = value;
                },
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Contraseña requerido';
                  }
                  if (value!.length < 8) {
                    return 'Tener al menos 8 caracteres';
                  }
                  if (!RegExp(r'[A-Z]').hasMatch(value)) {
                    return 'Tener al menos una letra mayúscula';
                  }
                  if (!RegExp(r'[0-9]').hasMatch(value)) {
                    return 'Tener al menos un número';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
                decoration: InputDecoration(
                  hintText: 'contraseña',
                  icon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      }),
                ),
              ),
              TextFormField(
                controller: password2,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Contraseña requerida';
                  }
                  if (value != _password) {
                    return 'La contraseña no coincide';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
                decoration: InputDecoration(
                  hintText: 'repetir contraseña',
                  icon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      }),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                width: 12,
                child: ElevatedButton(
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print(
                            'Username: $_username,Direccion: $_direccion,Email: $_email, Password: $_password , Telefono: $_telefono, Cedula: $_cedula');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pantalla_login()));
                      }
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tienes Cuenta"),
                  Container(
                    child: TextButton(
                      child: Text("Iniciar Sesion"),
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
