import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Verified extends StatelessWidget {
  const Verified({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    return Scaffold(
      body: Container(
              margin:EdgeInsets.fromLTRB(10, 20, 10, 20),
              width: scrWidth - 20,
              height: scrHeight - 40,
              decoration: ShapeDecoration(
                  color: Color(0xFF3392EA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                  ),
              ),
              child: Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image(image: AssetImage('assets/images/verified.png')),
                  SizedBox(height:15),
                  Text(
                        'Verification \nSuccessful',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                        ),
                    ),
                  
                  SizedBox(height:15),
                  ElevatedButton(onPressed: () {
                    
                  }, child: Text('Continue'))
                ],)
              )
          ),
      
    );
  }
}