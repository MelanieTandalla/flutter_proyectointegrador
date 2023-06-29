import 'package:flutter/material.dart';
import 'BarcodeScanPage.dart';
import 'HomePage.dart';
import 'QrGeneratorPage.dart';
import 'package:qr_flutter/qr_flutter.dart';


class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Scanea tu codigo',
      'route': '/barcode_scan',
      'icon': Icons.qr_code,
     
    },
    {
      'title': 'Genera tu codigo',
      'route': '/qr_generator',
      'icon': Icons.qr_code_scanner,
    },
  ];

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
              Container(
                width: 600,
              ),
            ],
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, options[index]['route']);
                    },
                    leading: Icon(options[index]['icon']),
                    title: Text(options[index]['title']),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}