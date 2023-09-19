import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/signin.dart';

class NewUserReg extends StatelessWidget {
  const NewUserReg({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginView(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:20),
              Text('Registered!',style: TextStyle(fontSize: 44,color: Color(0xFF1019E9),fontWeight: FontWeight.w900),)
            ],),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Hero(
                  tag: 'heroLogo', 
                  child: Image(image: AssetImage('assets/images/main_app_logo.png'),alignment: Alignment.centerRight,height:50,width:150),),
                SizedBox(width: 30,)
              ],
            )
          ],
        ),
      )
    );
  }
}