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
      body: Column(
        children: [
          Container(
            width:scrWidth-15,
            height:scrHeight/2,
            margin:EdgeInsets.fromLTRB(7.5, 10, 7.5, 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.lightBlue),
            child: Center(
              child: ContainerWithQRSpace())),
          Container(
            child:Column(children: []),
          )]
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
