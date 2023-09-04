import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';


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
      body: Container(
        height: scrHeight,
        color: Color.fromARGB(250,217,217,217),
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
            SizedBox(height: 15),
            ElevatedButton(onPressed: () {
              
            }, child: Text('Resend')),
            ElevatedButton(onPressed: () {
              
            }, child: Text('Cancel')),
            SizedBox(height: 15),
            Container(
                width: scrWidth-15,
                height: 100,
                decoration: ShapeDecoration(
                    color: Color(0xFF353535),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                ),
            )
          ]
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
