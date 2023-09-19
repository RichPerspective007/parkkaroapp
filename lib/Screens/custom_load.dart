import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/user_auth_choice.dart';

class CustomLoad extends StatelessWidget {
  const CustomLoad({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const UserAuthChoice(),
        ),
      );
    });
    return Scaffold(
      body:Container(
        height: scrHeight,
        width: scrWidth,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFFA41B),
            Colors.white,
            Color(0xFF14B265)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.35,
            0.60,
            0.99
          ]
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'AppLogo',
              child: Image.asset('assets/images/fin_logo.png',height: 100,width: scrWidth-50,),)
          ],
        ),
      )
    );
  }
}