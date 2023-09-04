import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/verified_screen.dart';

class PendingVerification extends StatelessWidget {
  const PendingVerification({super.key});

  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    double scrWidth = Constants.screenWidth(context);
    bool verificationStatus = true;
    return Scaffold(
      body: Container(
        height:scrHeight,
        color: Color.fromARGB(250, 217, 217, 217),
        child: Column(
          children: [
            Container(
              margin:EdgeInsets.fromLTRB(10, 20, 10, 20),
              width: scrWidth-20,
              height: 400,
              decoration: ShapeDecoration(
                  color: Color(0xFF3392EA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                  ),
              ),
          ),
          GestureDetector(
            onTap: () {
              if (verificationStatus)
                Navigator.push(context, MaterialPageRoute(builder: (context) => Verified()));
            },
            child: Container(
              alignment: Alignment.center,
              width: scrWidth-20,
              height: 75,
              decoration: ShapeDecoration(
                  color: Color(0xFF3392EA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                  ),
              ),
              child:const Text('Submit',style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          ),),
            ),
          ),

          ],
        )
      )
    );
  }
}