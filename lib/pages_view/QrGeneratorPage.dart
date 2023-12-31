import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'BarcodeScanPage.dart';
import 'HomePage.dart';
import 'QrGeneratorPage.dart';

class QrGeneratorPage extends StatefulWidget {
  @override
  _QrGeneratorPageState createState() => _QrGeneratorPageState();
}

class _QrGeneratorPageState extends State<QrGeneratorPage> {
  String qrText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genera tu codigo QR'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  qrText = text;
                });
              },
              decoration: InputDecoration(
                labelText: 'Codigo QR',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: qrText.isNotEmpty
                      ? QrImageView(
  data: qrText,
  version: QrVersions.auto,
  size: 200.0,
)
                      : Text(
                          'Codigo QR',
                          style: TextStyle(fontSize: 18.0),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
