import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/main.dart';


class QRCodeScreen extends StatefulWidget {
  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
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
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.lightBlue),
                child: Center(
                  child: Container(
                    width: 278,
                    height: 278,
                    color: Colors.grey[200],
                    child: Center(
                      child: Image(image: AssetImage('assets/images/qr_example.png')), // Placeholder for the QR code widget
                    ),
                  ))),
              Container(
                  width: scrWidth-15,
                  height: 100,
                  decoration: ShapeDecoration(
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                      ),
                  ),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                
              }, child: Text('Resend')),
              ElevatedButton(onPressed: () {
                
              }, child: Text('Cancel')),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                  width: scrWidth-15,
                  height: scrHeight/8.5,
                  decoration: ShapeDecoration(
                      color: Color(0xFF353535),
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

class ContainerWithQRSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.grey[200],
      child: Center(
        child: Placeholder(), // Placeholder for the QR code widget
      ),
    );
  }
}
