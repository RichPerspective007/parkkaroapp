import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:loading_indicator/loading_indicator.dart';

class QRCodeScreen extends StatefulWidget {
  late final String bookVal;
  QRCodeScreen({required this.bookVal});
  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
  Image? qrCodeImage;
  Future<void> generateQRCode() async {
    final apiUrl = Uri.parse('http://codevengers.pythonanywhere.com/generate_qr');
    final values = widget.bookVal.split(',');
    print('Going to the api.');
    final response = await http.post(
      apiUrl,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'values': values}),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      final bytes = response.bodyBytes;
      setState(() {
        qrCodeImage = Image.memory(bytes);
        print('qrCodeImage');
      });
    }
  }
  void initState() {
    super.initState();
    generateQRCode(); // Call generateQRCode when the widget is first created
  }
  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: scrHeight,
          color:context.isDarkMode?Color(0xFF353535):Color.fromARGB(250,217,217,217),
          child: Column(
            children: [
              Container(
                width:scrWidth-15,
                height:scrHeight/2,
                margin:EdgeInsets.fromLTRB(7.5, 10, 7.5, 2),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Color(0xFFFFA41B)),
                child: Center(
                  child: Container(
                    width: 278,
                    height: 278,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                    child: Center(
                      child: (qrCodeImage != null)
                        ? qrCodeImage
                        : Container(
                          width:100,
                          height:100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: const LoadingIndicator(
                                indicatorType: Indicator.circleStrokeSpin,
                                colors: [Colors.orange],
                                strokeWidth: 2,
                                backgroundColor: Colors.white,
                                pathBackgroundColor: Colors.black,
                              ),
                          ),
                        ),
                    ),
                  )
                  )),
              Container(
                  width: scrWidth-15,
                  height: 100,
                  decoration: ShapeDecoration(
                      color: Color(0xFFFFA41B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                      ),
                  ),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                
              }, 
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
              child: Text('Resend')),
              ElevatedButton(onPressed: () {
                
              }, 
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFFA41B))),
              child: Text('Cancel')),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                  width: scrWidth-15,
                  height: scrHeight/8.5,
                  decoration: ShapeDecoration(
                      color: Color(0xFF00B400),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(style:BorderStyle.solid,color: context.isDarkMode?Color.fromARGB(198, 237, 138, 25):Colors.transparent,width: 1.0)
                      ),
                  ),
                  child: Text('NOTE:\nThis QR Code is confidential. Please do not share this with anyone else.',style: TextStyle(color: Colors.white),),
              )
            ]
          ),
        ),
      ),
    );
  }
}