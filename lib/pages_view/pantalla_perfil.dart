import 'package:flutter/material.dart';

class Page_profile extends StatefulWidget {
  const Page_profile({super.key});

  @override
  State<Page_profile> createState() => _Page_profileState();
}

class _Page_profileState extends State<Page_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('URL_DE_LA_IMAGEN'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nombre del Usuario',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Descripción del usuario',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}