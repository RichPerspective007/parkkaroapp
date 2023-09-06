import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/home_page_2.dart';
import 'package:parkeaseapp/Screens/register.dart';
import 'package:parkeaseapp/Screens/verification_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    print(scrHeight);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover,
            ),
        ),
        child: Container(
          height: scrHeight-400,
          width: scrWidth-20,
          margin:EdgeInsets.fromLTRB(9, 0.625*scrHeight, 9, 38),
          decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(30)),
          child: Column(children: [
            Image.asset('assets/images/logo.png',height: 90,width: 200,alignment: Alignment(1.0,1.0),),
            Text('Welcome to ParkEase.\nGet Started by creating a new account or log in.',style: TextStyle(color:Colors.white,fontFamily: 'Inter',fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterView()),
                  );
              }, child: Text('Register')),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PendingVerification()),
                  );
              }, child: Text('Sign In')),
            ],)
          ],)
        )
      )
    );
  }
}