import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QRCodeGenerator extends StatefulWidget {
  @override
  _QRCodeGeneratorState createState() => _QRCodeGeneratorState();
}

class _QRCodeGeneratorState extends State<QRCodeGenerator> {
  TextEditingController valuesController = TextEditingController();
  Image? qrCodeImage;

  Future<void> generateQRCode() async {
    final apiUrl = Uri.parse('http://127.0.0.1:5000/generate_qr');
    final values = valuesController.text.split(',');

    final response = await http.post(
      apiUrl,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'values': values}),
    );

    if (response.statusCode == 200) {
      final bytes = response.bodyBytes;
      setState(() {
        qrCodeImage = Image.memory(bytes);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: valuesController,
            decoration: InputDecoration(
              labelText: 'Enter values (comma-separated)',
            ),
          ),
          ElevatedButton(
            onPressed: generateQRCode,
            child: Text('Generate QR Code'),
          ),
          if (qrCodeImage != null) ...[
            SizedBox(height: 20),
            Text('QR Code:'),
            SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              child: qrCodeImage,
            ),
          ],
        ],
      ),
    );
  }
}
